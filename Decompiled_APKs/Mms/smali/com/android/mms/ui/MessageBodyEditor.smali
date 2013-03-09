.class public Lcom/android/mms/ui/MessageBodyEditor;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;,
        Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;,
        Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;,
        Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;,
        Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;,
        Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;,
        Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field static final MSG_CONVERT_TO_RELATED:I = 0x5

.field static final MSG_EDIT_DURATION:I = 0x1f

.field static final MSG_EDIT_SLIDESHOW:I = 0x2

.field static final MSG_PREVIEW_SLIDESHOW:I = 0x1

.field static final MSG_REMOVE_SLIDESHOW:I = 0x3

.field static final MSG_REPLACE_AUDIO:I = 0x22

.field static final MSG_REPLACE_IMAGE:I = 0x20

.field static final MSG_REPLACE_LOCATION:I = 0x4d

.field static final MSG_REPLACE_VCAL:I = 0x6

.field static final MSG_REPLACE_VCARD:I = 0x4

.field static final MSG_REPLACE_VIDEO:I = 0x21

.field static final MSG_RESET_MMSSIZE:I = 0x24

.field static final MSG_RESET_PANEL:I = 0x23

.field private static final TAG:Ljava/lang/String; = "MessageBodyEditor"

.field private static final TEXT_PART_NAME:Ljava/lang/String; = "text__01"

.field static final TYPE_BLACK:I = 0x1

.field static final TYPE_GRAY:I


# instance fields
.field fromDraft:Z

.field fromMixedEditButton:Z

.field isClear:Z

.field private mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSlidePostion:I

.field private mDelayClear:Z

.field private mEditorView:Landroid/widget/LinearLayout;

.field private final mFactory:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

.field private mFinishLoading:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsRelatedSMIL:Z

.field private mListView:Landroid/view/View;

.field private mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

.field private final mMediaListView:Landroid/widget/ListView;

.field private mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

.field private mMessageBodyUri:Landroid/net/Uri;

.field private mMsgBodyCharset:Ljava/lang/String;

.field private mNeedClear:Z

.field private mNeedToast:Z

.field mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mOnThreadText:Ljava/lang/String;

.field private mSlideAttachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SlideAttachmentView;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSlideshowUri:Landroid/net/Uri;

.field mTemp:Lcom/android/mms/model/MediaModel;

.field mTempText:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private m_bIsVCardVCalendar:Z

.field private syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->syncObj:Ljava/lang/Object;

    .line 136
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mDelayClear:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedClear:Z

    .line 140
    const-string v1, "utf-8"

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMsgBodyCharset:Ljava/lang/String;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedToast:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mFinishLoading:Z

    .line 418
    iput-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mListView:Landroid/view/View;

    .line 423
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 424
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    .line 433
    iput v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    .line 472
    new-instance v1, Lcom/android/mms/ui/MessageBodyEditor$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageBodyEditor$1;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 452
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    .line 453
    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    .line 455
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 456
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    .line 457
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    .line 459
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 461
    new-instance v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/ui/MessageBodyEditor$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mFactory:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    .line 463
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->isClear:Z

    .line 466
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromDraft:Z

    .line 467
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromMixedEditButton:Z

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mFactory:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->previewLocation(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageBodyEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mFinishLoading:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageBodyEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedToast:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/MessageBodyEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedToast:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->showSlideActionList(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageBodyEditor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor;->showActionList(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->playAudio(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->preivewImageVideo(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageBodyEditor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor;->replaceImageVideo(IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageBodyEditor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor;->removeImageVideo(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MessageBodyEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->needToClearSlide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->discardSlide()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->replaceAudio(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageBodyEditor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->removeAudio(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageBodyEditor;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->showAttachmentList(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageBodyEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/MessageBodyEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/SlideshowModel;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageBodyEditor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->convertToRelated(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->previewVCard(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->previewVCalendar(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method private convertToRelated(Z)Z
    .locals 11
    .parameter "bRefresh"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3054
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 3055
    .local v8, text:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_2

    .line 3056
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 3057
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3058
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;

    .line 3059
    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, v1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v0, :cond_2

    .line 3060
    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/model/RegionMediaModel;->setRegion(Lcom/android/mms/model/RegionModel;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3072
    :cond_2
    if-eqz p1, :cond_4

    .line 3073
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 3074
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3073
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3062
    .end local v7           #i:I
    .end local v8           #text:Ljava/lang/CharSequence;
    :catch_0
    move-exception v6

    .line 3063
    .local v6, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v2, 0x7f090051

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3064
    const-string v0, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToRelated() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 3085
    .end local v6           #e:Lcom/android/mms/ExceedMessageSizeException;
    :goto_1
    return v0

    .line 3066
    :catch_1
    move-exception v6

    .line 3067
    .local v6, e:Lcom/google/android/mms/MmsException;
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v2, 0x7f090060

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3068
    const-string v0, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToRelated() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 3069
    goto :goto_1

    .line 3075
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .restart local v7       #i:I
    .restart local v8       #text:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3077
    const/4 v7, 0x0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 3078
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v7, v2}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3077
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3080
    :catch_2
    move-exception v6

    .line 3081
    .restart local v6       #e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .end local v7           #i:I
    :cond_4
    move v0, v9

    .line 3085
    goto :goto_1
.end method

.method private createTextPart(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .parameter "text"

    .prologue
    .line 1131
    new-instance v1, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1132
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v2, "text/plain"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1133
    const-string v2, "text__01.txt"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1134
    const-string v2, "text__01"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1140
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1141
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMsgBodyCharset:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_0
    return-object v1

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "MessageBodyEditor"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1147
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    goto :goto_0
.end method

.method private discardSlide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3179
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3181
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBodyEditor;->removeSlide(I)V

    .line 3182
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 3183
    return-void
.end method

.method private ensureMixedMessageBody(Z)V
    .locals 4
    .parameter "needUpdateUI"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Lcom/android/mms/msg/body/MixedMessageBody;->createNew()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 535
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 536
    if-eqz p1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 538
    :cond_1
    return-void
.end method

.method private fixTextPartName()V
    .locals 6

    .prologue
    .line 1626
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v4, :cond_0

    .line 1627
    const-string v4, "MessageBodyEditor"

    const-string v5, "fixTextPartName failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1631
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1632
    .local v1, model:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1635
    .local v3, txmodel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/TextModel;->setSrc(Ljava/lang/String;)V

    .line 1630
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #txmodel:Lcom/android/mms/model/TextModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    .end local v1           #model:Lcom/android/mms/model/SlideModel;
    :cond_2
    return-void
.end method

.method private needToClearSlide()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3167
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_1

    .line 3174
    :cond_0
    :goto_0
    return v0

    .line 3170
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3171
    goto :goto_0
.end method

.method private playAudio(I)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 2695
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 2696
    :cond_0
    const-string v4, "MessageBodyEditor"

    const-string v5, "playAudio failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_1
    :goto_0
    return-void

    .line 2700
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 2701
    .local v3, model:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2702
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2703
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 2704
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2705
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2706
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2707
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preivewImageVideo(I)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 2667
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 2668
    :cond_0
    const-string v4, "MessageBodyEditor"

    const-string v5, "preivewImageVideo failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2672
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 2673
    .local v3, model:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2674
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2675
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 2676
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2677
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2678
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2679
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 10
    .parameter "media"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1933
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030037

    invoke-virtual {v5, v6, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .line 1934
    .local v3, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1936
    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$3;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    .line 1945
    .local v2, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageBodyEditor$4;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 1965
    .local v4, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 1966
    check-cast v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5, v7}, Lcom/android/mms/model/ImageModel;->setPreview(Z)V

    .line 1967
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 1968
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 1969
    invoke-virtual {v3, v2, v8}, Lcom/android/mms/ui/SlideAttachmentView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 1970
    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1971
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    check-cast p1, Lcom/android/mms/model/ImageModel;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/SlideAttachmentView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2058
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    return-void

    .line 1973
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1974
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 1975
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 1976
    invoke-virtual {v3, v2, v8}, Lcom/android/mms/ui/SlideAttachmentView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 1977
    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1978
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    check-cast p1, Lcom/android/mms/model/VideoModel;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/SlideAttachmentView;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1980
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, p1

    .line 1981
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .line 1982
    .local v1, audio:Lcom/android/mms/model/AudioModel;
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 1983
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 1984
    invoke-virtual {v3, v2, v8}, Lcom/android/mms/ui/SlideAttachmentView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 1985
    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1986
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v9}, Lcom/android/mms/ui/SlideAttachmentView;->setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_0

    .line 1988
    .end local v1           #audio:Lcom/android/mms/model/AudioModel;
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1989
    :cond_4
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 1990
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 1991
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1992
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v6

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/mms/ui/SlideAttachmentView;->setVCard(Ljava/lang/String;ILjava/lang/String;)V

    .line 2001
    :cond_5
    :goto_1
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$5;

    .end local v4           #textWatcher:Landroid/text/TextWatcher;
    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageBodyEditor$5;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 2033
    .restart local v4       #textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2035
    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$6;

    .end local v2           #onClickListener:Landroid/view/View$OnClickListener;
    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$6;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    .line 2049
    .restart local v2       #onClickListener:Landroid/view/View$OnClickListener;
    const v5, 0x7f0e00b2

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/SlideAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2050
    .local v0, attachmentPanel:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2051
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1993
    .end local v0           #attachmentPanel:Landroid/view/View;
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1994
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v6

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/mms/ui/SlideAttachmentView;->setVCalendar(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1995
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 1996
    check-cast v5, Lcom/android/mms/model/LocationModel;

    invoke-virtual {v5}, Lcom/android/mms/model/LocationModel;->getAddressFirstLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/mms/model/LocationModel;

    invoke-virtual {v5}, Lcom/android/mms/model/LocationModel;->getAddressSecondLine()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v7}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v6, v5, v7, p2}, Lcom/android/mms/ui/SlideAttachmentView;->setLocation(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1

    .line 2055
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2056
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Unrecognized media"

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private presentMultipleMedia(Lcom/android/mms/msg/body/MixedMessageBody;)V
    .locals 5
    .parameter "messageBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 2063
    :cond_0
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Not multiple media case"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2065
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    .line 2066
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2068
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 2069
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 2070
    invoke-virtual {p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideAttachmentView;->setAttachments(II)V

    .line 2072
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    return-void
.end method

.method private presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
    .locals 10
    .parameter "model"
    .parameter "location"
    .parameter "bAdd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2090
    const/4 v3, 0x0

    .line 2093
    .local v3, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$7;

    invoke-direct {v4, p0, p2}, Lcom/android/mms/ui/MessageBodyEditor$7;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2142
    .local v4, textWatcher:Landroid/text/TextWatcher;
    if-eqz p3, :cond_1

    .line 2143
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030037

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .line 2144
    .restart local v3       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2145
    new-instance v5, Lcom/android/mms/ui/MessageBodyEditor$8;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageBodyEditor$8;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    invoke-virtual {v3, v5, v8}, Lcom/android/mms/ui/SlideAttachmentView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2151
    invoke-virtual {v3, p2}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 2152
    invoke-virtual {v3, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 2153
    new-instance v5, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;

    invoke-direct {v5, p0, p2}, Lcom/android/mms/ui/MessageBodyEditor$SlideOnLongClickListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/SlideAttachmentView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2155
    new-instance v5, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;

    invoke-direct {v5, p0, p2}, Lcom/android/mms/ui/MessageBodyEditor$EditTextLongClickListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/SlideAttachmentView;->setEditTextListener(Landroid/view/View$OnLongClickListener;)V

    .line 2163
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 2167
    invoke-virtual {p1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 2168
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2169
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/mms/model/ImageModel;->setPreview(Z)V

    .line 2166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2159
    .end local v0           #i:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .restart local v3       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    goto :goto_0

    .line 2172
    .restart local v0       #i:I
    :cond_2
    const-string v5, "SlideshowPresenter"

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v3, v7}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    .line 2173
    .local v1, presenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-virtual {v1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 2176
    invoke-virtual {v1, v9}, Lcom/android/mms/ui/SlideshowPresenter;->present(Z)V

    .line 2178
    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->close()V

    .line 2180
    if-eqz p3, :cond_3

    .line 2181
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    :cond_3
    return-void
.end method

.method private presentUnsupportedMedia(Lcom/android/mms/msg/body/MixedMessageBody;)V
    .locals 5
    .parameter "messageBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2076
    if-nez p1, :cond_0

    .line 2077
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "messageBody can\'t be null"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2079
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    .line 2080
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2082
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setSlidePosition(I)V

    .line 2083
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SlideAttachmentView;->setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 2084
    invoke-virtual {p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentView;->setUnsupported(I)V

    .line 2086
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    return-void
.end method

.method private previewLocation(Lcom/android/mms/model/MediaModel;)V
    .locals 3
    .parameter "locationModel"

    .prologue
    .line 2526
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/location/LocationMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2527
    .local v0, mapIntent:Landroid/content/Intent;
    const-string v1, "extra_startup_flag"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2529
    const-string v1, "extra_selected_place"

    check-cast p1, Lcom/android/mms/model/LocationModel;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/LocationModel;->getPlaceBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2531
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2532
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x33

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2534
    :cond_0
    return-void
.end method

.method private previewVCalendar(Lcom/android/mms/model/MediaModel;)V
    .locals 11
    .parameter "media"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 3024
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3027
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3028
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3029
    const/4 v8, 0x0

    .line 3030
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3031
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "beginTime"

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getVCalBegin()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3032
    const-string v0, "endTime"

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getVCalEnd()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3033
    const-string v0, "vCalendar"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3034
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3046
    .end local v9           #intent:Landroid/content/Intent;
    :goto_0
    if-eqz v8, :cond_0

    .line 3047
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3050
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 3036
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3037
    .local v7, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v0, 0x20c00e3

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3038
    const v0, 0x7f0200d1

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3039
    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3040
    const v0, 0x7f0901b5

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3041
    const v0, 0x20c015f

    new-instance v1, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v7, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3042
    const v0, 0x20c0164

    invoke-virtual {v7, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3043
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private previewVCard(Lcom/android/mms/model/MediaModel;)V
    .locals 14
    .parameter "media"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 2974
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3021
    :cond_0
    :goto_0
    return-void

    .line 2975
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_contact_card/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2978
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getCacheMyContactIds()J

    move-result-wide v10

    .line 2979
    .local v10, mycardid:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 2980
    const-wide/16 v10, 0x1

    .line 2981
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2982
    .local v12, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2984
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2986
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #mycardid:J
    .end local v12           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2989
    const-string v0, "MessageBodyEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vcard uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2994
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2995
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2997
    const/4 v8, 0x0

    .line 2998
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2999
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3000
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3001
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3016
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    if-eqz v8, :cond_0

    .line 3017
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 3004
    :cond_4
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3005
    .local v7, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3006
    const v0, 0x7f0200d1

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3007
    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3008
    const v0, 0x7f0901b5

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3009
    const v0, 0x20c015f

    new-instance v1, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v7, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3012
    const v0, 0x20c0164

    invoke-virtual {v7, v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3013
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1
.end method

.method private removeAudio(I)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 2644
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 2645
    :cond_0
    const-string v3, "MessageBodyEditor"

    const-string v4, "removeAudio failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :goto_0
    return-void

    .line 2649
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2650
    .local v2, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    .line 2653
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V

    .line 2656
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 2657
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2658
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    .end local v1           #m:Landroid/os/Message;
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto :goto_0

    .line 2659
    :catch_0
    move-exception v0

    .line 2660
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageBodyEditor"

    const-string v4, "presentSlide failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeImageVideo(IZ)V
    .locals 6
    .parameter "pos"
    .parameter "bImage"

    .prologue
    .line 2618
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 2619
    :cond_0
    const-string v3, "MessageBodyEditor"

    const-string v4, "removeImageVideo failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :goto_0
    return-void

    .line 2623
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2624
    .local v2, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    if-eqz p2, :cond_2

    .line 2625
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 2630
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V

    .line 2633
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 2634
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2635
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    .end local v1           #m:Landroid/os/Message;
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto :goto_0

    .line 2627
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    goto :goto_1

    .line 2636
    :catch_0
    move-exception v0

    .line 2637
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageBodyEditor"

    const-string v4, "presentSlide failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_2
.end method

.method private replaceAudio(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 2612
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2613
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2614
    iput p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    .line 2615
    return-void
.end method

.method private replaceImageVideo(IZ)V
    .locals 4
    .parameter "pos"
    .parameter "bImage"

    .prologue
    const/4 v3, 0x0

    .line 2603
    if-eqz p2, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2607
    .local v0, m:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2608
    iput p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    .line 2609
    return-void

    .line 2606
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #m:Landroid/os/Message;
    goto :goto_0
.end method

.method private setVCardActionList()[Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const v9, 0x7f0902f5

    const v8, 0x7f0902f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2574
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v4, 0x7f0902ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 2581
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 2582
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2583
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2584
    new-array v1, v7, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 2592
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .restart local v1       #items:[Ljava/lang/CharSequence;
    :cond_2
    return-object v1
.end method

.method private setcursorposition()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3201
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getPrefSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3202
    .local v3, tstr:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3203
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3204
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3205
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 3206
    .local v4, tstrlength:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3207
    .local v2, textlength:I
    if-lt v2, v4, :cond_0

    .line 3208
    sub-int v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3209
    .local v0, endtext:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3210
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideAttachmentView;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    sub-int v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 3214
    .end local v0           #endtext:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #textlength:I
    .end local v4           #tstrlength:I
    :cond_0
    return-void
.end method

.method private showActionList(Ljava/lang/String;I)V
    .locals 11
    .parameter "contentType"
    .parameter "pos"

    .prologue
    const v10, 0x7f0902ee

    const v9, 0x7f0902f5

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 2289
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f0902ea

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2293
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 2295
    .local v3, temp:Ljava/lang/String;
    const-string v4, "VIDEO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "IMAGE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2296
    :cond_0
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f0902eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2303
    .local v2, items:[Ljava/lang/CharSequence;
    const-string v4, "VIDEO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2304
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2306
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$10;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor$10;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2519
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2520
    .local v1, dlg:Landroid/app/Dialog;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v4, :cond_3

    .line 2521
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 2523
    :cond_3
    return-void

    .line 2338
    .end local v1           #dlg:Landroid/app/Dialog;
    :cond_4
    const-string v4, "AUDIO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2339
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f0902eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2346
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$11;

    invoke-direct {v4, p0, p2}, Lcom/android/mms/ui/MessageBodyEditor$11;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 2371
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_5
    const-string v4, "MULTIPLE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2372
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 2377
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$12;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageBodyEditor$12;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 2395
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_6
    const-string v4, "UNSUPPORTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2396
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 2401
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$13;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageBodyEditor$13;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_0

    .line 2419
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_7
    const-string v4, "VCARD"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2420
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->setVCardActionList()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2422
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$14;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageBodyEditor$14;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_0

    .line 2451
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_8
    const-string v4, "VCALENDAR"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2452
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->setVCardActionList()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2454
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$15;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageBodyEditor$15;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_0

    .line 2483
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_9
    const-string v4, "LOCATION"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2484
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->setVCardActionList()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2486
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/ui/MessageBodyEditor$16;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/MessageBodyEditor$16;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_0
.end method

.method private showAttachmentList(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2596
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/AttachmentListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2597
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2598
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2599
    return-void
.end method

.method private showSlideActionList(I)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 2537
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2538
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0902ea

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2540
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0902eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2545
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor$17;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$17;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2566
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2567
    .local v1, dlg:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v3, :cond_0

    .line 2568
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 2570
    :cond_0
    return-void
.end method

.method private updateSlideshowModel()V
    .locals 3

    .prologue
    .line 2201
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2202
    :cond_0
    const-string v1, "MessageBodyEditor"

    const-string v2, "updateSlideshowModel failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_1
    return-void

    .line 2206
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2208
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V

    .line 2206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSlideshowText(I)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 2186
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    .line 2191
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2193
    .local v2, text:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2194
    .local v1, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    if-eqz v2, :cond_2

    .line 2195
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->removeText(I)Z

    goto :goto_0
.end method


# virtual methods
.method public SetMmsSize()V
    .locals 4

    .prologue
    .line 3219
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getCurrentMessageSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3221
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3223
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public addImageByURI(Landroid/net/Uri;)V
    .locals 10
    .parameter "imageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const v9, 0x7f0900ed

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 543
    :try_start_0
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V
    :try_end_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Lcom/android/mms/ResolutionException;
    new-instance v1, Lcom/android/mms/util/ResizeImageHandler;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getCurrentMessageSize()I

    move-result v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/util/ResizeImageHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;I)V

    .line 547
    .local v1, h:Lcom/android/mms/util/ResizeImageHandler;
    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageBodyEditor$2;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/util/ResizeImageHandler;->setOnImageResizedListener(Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;)V

    .line 562
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f09004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1, v6}, Lcom/android/mms/ui/MessageUtils;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 565
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    .end local v1           #h:Lcom/android/mms/util/ResizeImageHandler;
    :catch_1
    move-exception v0

    .line 566
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v4, 0x7f09004f

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f090050

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addMMSCallbackNumber()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3245
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMMSCallbackNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3246
    .local v0, callback:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3247
    const-string v2, "MessageBodyEditor"

    const-string v3, "addMMSCallbackNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    if-eqz v2, :cond_2

    .line 3249
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3250
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideAttachmentView;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideAttachmentView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3252
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3253
    .restart local v1       #text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addMedia(Lcom/android/mms/model/MediaModel;)V
    .locals 14
    .parameter "media"

    .prologue
    .line 573
    const-string v10, "MessageBodyEditor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addMedia:> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessageBodyEditor;->ensureMixedMessageBody(Z)V

    .line 577
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v10, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->addMedia(Lcom/android/mms/model/MediaModel;)I

    .line 580
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 581
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isLocation()Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_3

    .line 585
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 586
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/LocationModel;

    move-object v2, v0

    .line 587
    .local v2, location:Lcom/android/mms/model/LocationModel;
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 588
    .local v6, partMapImage:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 589
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_2

    .line 590
    invoke-virtual {v6, v9}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 591
    const-string v5, "map.jpg"

    .line 592
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/LocationModel;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 593
    invoke-virtual {v2}, Lcom/android/mms/model/LocationModel;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/location/Place;->getMapName()Ljava/lang/String;

    move-result-object v5

    .line 594
    :cond_1
    sget-object v10, Lcom/android/mms/model/LocationModel;->MapContentType:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 595
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 596
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 597
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 598
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    const-wide v11, 0x7fffffffffffffffL

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v8

    .line 600
    .local v8, tmp_result:Landroid/net/Uri;
    new-instance v4, Lcom/android/mms/ui/MediaPicker;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/android/mms/ui/MediaPicker;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 601
    .local v4, mediaPicker:Lcom/android/mms/ui/MediaPicker;
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v11}, Lcom/android/mms/msg/body/MixedMessageBody;->getMessageSize()I

    move-result v11

    invoke-virtual {v4, v10, v8, v11}, Lcom/android/mms/ui/MediaPicker;->pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 602
    .local v3, map:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v3, v5}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V

    .line 603
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v10, v3}, Lcom/android/mms/msg/body/MixedMessageBody;->addMedia(Lcom/android/mms/model/MediaModel;)I

    .line 606
    .end local v2           #location:Lcom/android/mms/model/LocationModel;
    .end local v3           #map:Lcom/android/mms/model/ImageModel;
    .end local v4           #mediaPicker:Lcom/android/mms/ui/MediaPicker;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #partMapImage:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #tmp_result:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-direct {p0, p1, v10}, Lcom/android/mms/ui/MessageBodyEditor;->presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :cond_3
    :goto_0
    :try_start_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->notifyDataSetChanged()V

    .line 619
    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 620
    .local v7, temp:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v10, :cond_4

    .line 621
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v10}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 623
    :cond_4
    iput-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 625
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 631
    .end local v7           #temp:Ljava/lang/String;
    :goto_1
    return-void

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 626
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    .line 627
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v12, 0x7f090051

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v13, 0x7f090162

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addNewSlide(Z)V
    .locals 8
    .parameter "addAfter"

    .prologue
    const/4 v6, 0x1

    .line 1812
    if-eqz p1, :cond_0

    .line 1815
    const/4 v3, 0x1

    .line 1823
    .local v3, slidePos:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1824
    const-string v5, "MessageBodyEditor"

    const-string v6, "addNewSlide failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :goto_1
    return-void

    .line 1820
    .end local v3           #slidePos:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #slidePos:I
    goto :goto_0

    .line 1828
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_3

    .line 1829
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v5, :cond_2

    .line 1830
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageBodyEditor;->convertToRelated(Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1831
    const-string v5, "MessageBodyEditor"

    const-string v6, "addNewSlide failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1836
    :cond_2
    const-string v5, "MessageBodyEditor"

    const-string v6, "addNewSlide failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1842
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1843
    .local v2, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1844
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1845
    move v2, v1

    .line 1851
    :cond_4
    add-int/2addr v3, v2

    .line 1852
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowModel()V

    .line 1854
    new-instance v4, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v5, v6}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1855
    .local v4, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v4, v3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1856
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f09005e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1874
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto :goto_1

    .line 1843
    .end local v4           #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1859
    .restart local v4       #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 1860
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1859
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1861
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1863
    const/4 v1, 0x0

    :goto_5
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 1864
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v1, v6}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 1863
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1867
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1868
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideAttachmentView;->requestFocus()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_3
.end method

.method public declared-synchronized attachMedia(Lcom/android/mms/model/MediaModel;)V
    .locals 22
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1641
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1643
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->convertToRelated(Z)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1644
    new-instance v18, Lcom/google/android/mms/MmsException;

    const-string v19, "convertToRelated failed"

    invoke-direct/range {v18 .. v19}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    :catchall_0
    move-exception v18

    :goto_0
    monitor-exit p0

    throw v18

    .line 1647
    :cond_0
    :try_start_1
    new-instance v18, Lcom/google/android/mms/MmsException;

    const-string v19, "mSlideshow is null"

    invoke-direct/range {v18 .. v19}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1651
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1652
    const-string v18, "MessageBodyEditor"

    const-string v19, "mSlideAttachmentList size > mSlideshow size ..... "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 1659
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    .line 1660
    .local v15, pos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1662
    move v15, v9

    .line 1668
    :cond_4
    const/4 v4, 0x0

    .line 1669
    .local v4, bNewSlide:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1670
    .local v5, curSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v5, :cond_6

    .line 1671
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1672
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1673
    :cond_5
    const/4 v4, 0x1

    .line 1684
    :cond_6
    :goto_2
    if-eqz v4, :cond_c

    .line 1685
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/mms/model/ContentRestriction;->getMaxSlidesPerMmsMessage()I

    move-result v10

    .line 1686
    .local v10, maxSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v10, :cond_c

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f09005e

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    .end local v10           #maxSize:I
    .end local v15           #pos:I
    :goto_3
    monitor-exit p0

    return-void

    .line 1660
    .end local v4           #bNewSlide:Z
    .end local v5           #curSlide:Lcom/android/mms/model/SlideModel;
    .restart local v15       #pos:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1674
    .restart local v4       #bNewSlide:Z
    .restart local v5       #curSlide:Lcom/android/mms/model/SlideModel;
    :cond_8
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1675
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1676
    :cond_9
    const/4 v4, 0x1

    goto :goto_2

    .line 1677
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1678
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1679
    :cond_b
    const/4 v4, 0x1

    goto :goto_2

    .line 1692
    :cond_c
    const/4 v3, 0x0

    .line 1693
    .local v3, bAdd:Z
    if-eqz v4, :cond_12

    new-instance v16, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 1694
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    :goto_4
    new-instance v17, Lcom/android/mms/model/TextModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "text/plain"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "text_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v21

    invoke-direct/range {v17 .. v21}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1702
    .local v17, text:Lcom/android/mms/model/TextModel;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->getExistUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1703
    .local v8, existUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/model/ImageModel;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1704
    if-eqz v8, :cond_e

    .line 1705
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 1706
    .local v12, oriSrc:Ljava/lang/String;
    new-instance v11, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v11, v0, v8, v1, v2}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1707
    .end local p1
    .local v11, media:Lcom/android/mms/model/MediaModel;
    if-eqz v12, :cond_d

    .line 1708
    :try_start_4
    invoke-virtual {v11, v12}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    move-object/from16 p1, v11

    .line 1713
    .end local v11           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #oriSrc:Ljava/lang/String;
    .restart local p1
    :cond_e
    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1714
    if-eqz v4, :cond_f

    .line 1715
    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1716
    if-nez v8, :cond_f

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1748
    :cond_f
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->updateDuration()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1753
    if-eqz v4, :cond_18

    .line 1755
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1756
    const/4 v3, 0x1

    .line 1767
    :goto_5
    :try_start_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/model/RegionMediaModel;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1768
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/model/RegionMediaModel;->setRegion(Lcom/android/mms/model/RegionModel;)V

    .line 1773
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v13

    .line 1775
    .local v13, pb:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v13, :cond_11

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    .line 1777
    .local v14, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1779
    .end local v14           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1782
    if-nez v3, :cond_19

    .line 1783
    new-instance v18, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v18

    .end local v8           #existUri:Landroid/net/Uri;
    .end local v13           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    .end local v17           #text:Lcom/android/mms/model/TextModel;
    :cond_12
    move-object/from16 v16, v5

    .line 1693
    goto/16 :goto_4

    .line 1720
    .restart local v16       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v17       #text:Lcom/android/mms/model/TextModel;
    :catch_0
    move-exception v6

    .line 1721
    .local v6, e:Lcom/android/mms/ExceedMessageSizeException;
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v18

    if-nez v18, :cond_13

    .line 1722
    throw v6

    .line 1724
    :cond_13
    if-eqz v4, :cond_14

    .line 1725
    new-instance v16, Lcom/android/mms/model/SlideModel;

    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1727
    .restart local v16       #slide:Lcom/android/mms/model/SlideModel;
    :try_start_9
    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1734
    :cond_14
    const/4 v9, 0x0

    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_15

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1734
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1729
    :catch_1
    move-exception v7

    .line 1730
    .local v7, ex:Ljava/lang/Exception;
    new-instance v18, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v18

    .line 1736
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1737
    const/4 v9, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_16

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 1737
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1740
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageBodyEditor;->fixTextPartName()V

    .line 1742
    if-eqz v4, :cond_17

    add-int/lit8 v15, v15, 0x1

    .end local v15           #pos:I
    :cond_17
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    .line 1743
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->changeSlideImage(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 1757
    .end local v6           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v8       #existUri:Landroid/net/Uri;
    .restart local v15       #pos:I
    :catch_2
    move-exception v6

    .line 1758
    .local v6, e:Lcom/android/mms/ContentRestrictionException;
    new-instance v18, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct/range {v18 .. v18}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v18

    .line 1761
    .end local v6           #e:Lcom/android/mms/ContentRestrictionException;
    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 1786
    .restart local v13       #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_19
    if-eqz v4, :cond_1d

    .line 1787
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_1a

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1787
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1789
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1790
    const/4 v9, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_1b

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 1790
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1794
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1c

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/SlideAttachmentView;->requestFocus()Z

    .line 1801
    :cond_1c
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageBodyEditor;->fixTextPartName()V

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto/16 :goto_3

    .line 1798
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_b

    .line 1720
    .end local v13           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local p1
    .restart local v11       #media:Lcom/android/mms/model/MediaModel;
    .restart local v12       #oriSrc:Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object/from16 p1, v11

    .end local v11           #media:Lcom/android/mms/model/MediaModel;
    .restart local p1
    goto/16 :goto_6

    .line 1641
    .end local p1
    .restart local v11       #media:Lcom/android/mms/model/MediaModel;
    :catchall_1
    move-exception v18

    move-object/from16 p1, v11

    .end local v11           #media:Lcom/android/mms/model/MediaModel;
    .restart local p1
    goto/16 :goto_0
.end method

.method public canAddMedia()Z
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeAllSlideDuration(I)V
    .locals 3
    .parameter "dur"

    .prologue
    .line 2777
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2778
    :cond_0
    const-string v1, "MessageBodyEditor"

    const-string v2, "changeAllSlideDuration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_1
    return-void

    .line 2781
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2782
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 2781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized changeSlideAudio(Landroid/net/Uri;)V
    .locals 9
    .parameter "audio"

    .prologue
    .line 2927
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 2928
    :cond_0
    const-string v3, "MessageBodyEditor"

    const-string v4, "changeSlideAudio failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2964
    :goto_0
    monitor-exit p0

    return-void

    .line 2932
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2934
    .local v1, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :try_start_2
    iget v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-virtual {v1, v3, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2955
    :try_start_3
    iget v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2958
    :try_start_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2963
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2927
    .end local v1           #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2935
    .restart local v1       #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catch_0
    move-exception v0

    .line 2936
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f090051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f090162

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2940
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 2941
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v4, 0x7f0900ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2942
    .local v2, vdo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f09004f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f090050

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2946
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v2           #vdo:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2947
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v4, 0x7f0900ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2948
    .restart local v2       #vdo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f090051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f090052

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2959
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v2           #vdo:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2960
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageBodyEditor"

    const-string v4, "presentSlide failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public changeSlideDuration(I)V
    .locals 2
    .parameter "dur"

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2770
    :cond_0
    const-string v0, "MessageBodyEditor"

    const-string v1, "changeSlideDuration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :goto_0
    return-void

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    goto :goto_0
.end method

.method public declared-synchronized changeSlideImage(Landroid/net/Uri;)V
    .locals 12
    .parameter "image"

    .prologue
    .line 2796
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 2797
    :cond_0
    const-string v6, "MessageBodyEditor"

    const-string v7, "changeSlideImage failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2882
    :goto_0
    monitor-exit p0

    return-void

    .line 2801
    :cond_1
    :try_start_1
    new-instance v5, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v5, v6, v7}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2803
    .local v5, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$19;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/ui/MessageBodyEditor$19;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/ui/SlideshowEditor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2843
    .local v2, listener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    :try_start_2
    iget v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2871
    :goto_1
    :try_start_3
    iget v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2874
    :try_start_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 2875
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x23

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2876
    .local v3, m:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2881
    .end local v3           #m:Landroid/os/Message;
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2796
    .end local v2           #listener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    .end local v5           #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2844
    .restart local v2       #listener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    .restart local v5       #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catch_0
    move-exception v0

    .line 2846
    .local v0, e:Lcom/android/mms/ResolutionException;
    :try_start_6
    new-instance v1, Lcom/android/mms/util/ResizeImageHandler;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/mms/ResolutionException;->getReplaceSize()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v1, v6, p1, v7, v8}, Lcom/android/mms/util/ResizeImageHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;I)V

    .line 2849
    .local v1, h:Lcom/android/mms/util/ResizeImageHandler;
    invoke-virtual {v1, v2}, Lcom/android/mms/util/ResizeImageHandler;->setOnImageResizedListener(Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;)V

    .line 2850
    invoke-virtual {v1}, Lcom/android/mms/util/ResizeImageHandler;->run()V

    goto :goto_0

    .line 2852
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    .end local v1           #h:Lcom/android/mms/util/ResizeImageHandler;
    :catch_1
    move-exception v0

    .line 2853
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v7, 0x7f0900ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2854
    .local v4, pic:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v8, 0x7f09004f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v9, 0x7f090050

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2858
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v4           #pic:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2859
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v7, 0x7f0900ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2860
    .restart local v4       #pic:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v8, 0x7f090051

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v9, 0x7f090052

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2863
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v4           #pic:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2864
    .local v0, e:Lcom/google/android/mms/MmsException;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v8, 0x7f090051

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v9, 0x7f090162

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2877
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_4
    move-exception v0

    .line 2878
    .restart local v0       #e:Lcom/google/android/mms/MmsException;
    const-string v6, "MessageBodyEditor"

    const-string v7, "presentSlide failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public changeSlideLayout(I)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 2786
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2787
    :cond_0
    const-string v1, "MessageBodyEditor"

    const-string v2, "changeSlideLayout failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :goto_0
    return-void

    .line 2791
    :cond_1
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 2792
    .local v0, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeLayout(I)V

    goto :goto_0
.end method

.method public declared-synchronized changeSlideVideo(Landroid/net/Uri;)V
    .locals 10
    .parameter "video"

    .prologue
    .line 2885
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 2886
    :cond_0
    const-string v4, "MessageBodyEditor"

    const-string v5, "changeSlideVideo failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2924
    :goto_0
    monitor-exit p0

    return-void

    .line 2890
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2892
    .local v2, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :try_start_2
    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-virtual {v2, v4, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2913
    :try_start_3
    iget v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowText(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2916
    :try_start_4
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 2917
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2918
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2923
    .end local v1           #m:Landroid/os/Message;
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2885
    .end local v2           #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2893
    .restart local v2       #slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :catch_0
    move-exception v0

    .line 2894
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_6
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f090051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v7, 0x7f090162

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2898
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 2899
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2900
    .local v3, vdo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f09004f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v7, 0x7f090050

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2904
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v3           #vdo:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2905
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2906
    .restart local v3       #vdo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v6, 0x7f090051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const v7, 0x7f090052

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2919
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v3           #vdo:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2920
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "MessageBodyEditor"

    const-string v5, "presentSlide failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public checkNeedClear()Z
    .locals 3

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, flag:Z
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1467
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedClear:Z

    .line 1468
    monitor-exit v2

    .line 1469
    return v0

    .line 1468
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized clear(Z)V
    .locals 4
    .parameter "isNotify"

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->syncObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :try_start_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mDelayClear:Z

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mNeedClear:Z

    .line 1004
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1060
    :goto_0
    monitor-exit p0

    return-void

    .line 1007
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->recycle()V

    .line 1011
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 1012
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 1013
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->clear()V

    .line 1015
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 1021
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1022
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1023
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 1032
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v1, :cond_4

    .line 1033
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->clear()V

    .line 1034
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 1039
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 1040
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1041
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1043
    .end local v0           #i:I
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1044
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mCurrentSlidePostion:I

    .line 1045
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mListView:Landroid/view/View;

    .line 1049
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1051
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1053
    if-eqz p1, :cond_6

    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v1, :cond_6

    .line 1057
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v1}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 1059
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1051
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public clearMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_1

    .line 673
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 674
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->clear()V

    .line 677
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 682
    return-void
.end method

.method public converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "media"
    .parameter "fromEditor"
    .parameter "isEditor"
    .parameter "isFromDraft"
    .parameter "msgUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1337
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "media"
    .parameter "fromEditor"
    .parameter "isEditor"
    .parameter "isFromDraft"
    .parameter "subject"
    .parameter "msgUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 1344
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mTemp:Lcom/android/mms/model/MediaModel;

    .line 1345
    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mTempText:Ljava/lang/String;

    .line 1347
    iput-boolean p4, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromDraft:Z

    .line 1348
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromMixedEditButton:Z

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 1353
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/mms/ui/MessageBodyEditor;->loadRelatedSMIL(Lcom/android/mms/model/MediaModel;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1354
    :cond_0
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageBodyEditor;->isClear:Z

    .line 1360
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_1

    .line 1363
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 1364
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 1365
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->clear()V

    .line 1367
    iput-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 1368
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    return-object v0
.end method

.method public createFootprintsMMS(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "imageMedia"
    .parameter "audioMedia"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1380
    new-instance v2, Lcom/android/mms/model/SlideModel;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 1382
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    const-string v6, "text_0.txt"

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1385
    .local v3, textModel:Lcom/android/mms/model/TextModel;
    if-eqz p3, :cond_0

    .line 1386
    invoke-virtual {v3, p3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    .line 1387
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1388
    if-eqz p1, :cond_1

    .line 1389
    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1391
    :cond_1
    if-eqz p2, :cond_2

    .line 1392
    invoke-virtual {v2, p2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1394
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1396
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1397
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-string v4, "application/vnd.wap.multipart.related"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 1398
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1399
    .local v0, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1400
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v1, v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1402
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1404
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1405
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    return-object v4
.end method

.method discardSlideshow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 984
    :cond_0
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 985
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 993
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 996
    :cond_1
    return-void
.end method

.method public getActionListOnClickListener()Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;
    .locals 1

    .prologue
    .line 2272
    new-instance v0, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageBodyEditor$ActionListOnClickListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;)V

    return-object v0
.end method

.method public getCacheMyContactIds()J
    .locals 6

    .prologue
    .line 2967
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v0

    .line 2968
    .local v0, bMyContactIds:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 2970
    :goto_0
    return-wide v1

    .line 2969
    :cond_0
    const-string v3, "contact_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2970
    .local v1, lMyContactId:J
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    const-string v0, "application/vnd.wap.multipart.related"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "application/vnd.wap.multipart.mixed"

    goto :goto_0
.end method

.method public getCurrentMessageSize()I
    .locals 4

    .prologue
    .line 3227
    const/4 v0, 0x0

    .line 3228
    .local v0, nsize:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 3229
    const-string v1, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Related size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_0
    :goto_0
    return v0

    .line 3230
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_3

    .line 3231
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->getSize()I

    move-result v0

    .line 3232
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3233
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 3234
    :cond_2
    const-string v1, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mixed size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3237
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3238
    const-string v1, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFocusEdit()Landroid/widget/EditText;
    .locals 6

    .prologue
    .line 3119
    const/4 v0, 0x0

    .line 3123
    .local v0, edit:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3125
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 3126
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3127
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3128
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .line 3129
    .local v3, slideView:Lcom/android/mms/ui/SlideAttachmentView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3130
    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 3144
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    :cond_0
    :goto_1
    return-object v0

    .line 3127
    .restart local v1       #i:I
    .restart local v2       #size:I
    .restart local v3       #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3137
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .line 3138
    .restart local v3       #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3139
    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_1
.end method

.method public getMedia()Lcom/android/mms/model/MediaModel;
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnThreadText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mOnThreadText:Ljava/lang/String;

    return-object v0
.end method

.method public getOnViewClickListener(IZ)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "pos"
    .parameter "bAudio"

    .prologue
    .line 2276
    new-instance v0, Lcom/android/mms/ui/MessageBodyEditor$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor$9;-><init>(Lcom/android/mms/ui/MessageBodyEditor;IZ)V

    return-object v0
.end method

.method public getSlideSize()I
    .locals 2

    .prologue
    .line 3093
    const/4 v0, 0x0

    .line 3095
    .local v0, size:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 3096
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 3098
    :cond_0
    return v0
.end method

.method public getSlideshowUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isAllMediaExisted()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 1154
    iput-boolean v11, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    .line 1156
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_6

    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/MediaModel;

    .line 1158
    .local v9, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1162
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1163
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1167
    :cond_2
    const-string v0, "file"

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1168
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    .line 1183
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    :goto_1
    return v0

    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    move v0, v11

    .line 1171
    goto :goto_1

    .line 1177
    .end local v7           #c:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    :cond_5
    iput-boolean v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    goto :goto_0

    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    move v0, v10

    .line 1183
    goto :goto_1
.end method

.method public isDisableEditor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1411
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_0

    .line 1414
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCalendar()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v0

    .line 1417
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v0

    .line 1076
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1078
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmptySlide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1910
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-nez v1, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return v0

    .line 1912
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1917
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExceedMaxSize()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1097
    const/4 v2, 0x0

    .line 1099
    .local v2, size:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v4, :cond_1

    .line 1100
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1104
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1106
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v4}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1113
    :goto_1
    return v3

    .line 1101
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    goto :goto_0

    .line 1107
    .restart local v0       #cr:Lcom/android/mms/model/ContentRestriction;
    :catch_0
    move-exception v1

    .line 1108
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v3, 0x1

    goto :goto_1

    .line 1109
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 1110
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    goto :goto_1
.end method

.method public isFocused()Z
    .locals 5

    .prologue
    .line 3102
    const/4 v0, 0x0

    .line 3104
    .local v0, bFocused:Z
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3105
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3106
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3107
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    .line 3108
    .local v3, slideView:Lcom/android/mms/ui/SlideAttachmentView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3109
    const/4 v0, 0x1

    .line 3115
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    :cond_0
    return v0

    .line 3106
    .restart local v1       #i:I
    .restart local v2       #size:I
    .restart local v3       #slideView:Lcom/android/mms/ui/SlideAttachmentView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isFromDraft()Z
    .locals 1

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromDraft:Z

    return v0
.end method

.method public isFromEdit()Z
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromMixedEditButton:Z

    return v0
.end method

.method public isNeedToDisableSendButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1921
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->containsUnsupportedMedia()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCard()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedTranscript()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1088
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mListView:Landroid/view/View;

    if-nez v2, :cond_1

    const/16 v0, 0x190

    .line 1089
    .local v0, min:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 1092
    :cond_0
    :goto_1
    return v1

    .line 1088
    .end local v0           #min:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 1092
    .restart local v0       #min:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isRelatedMMS()Z
    .locals 1

    .prologue
    .line 3089
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    return v0
.end method

.method public isVcardVcalExist()Z
    .locals 1

    .prologue
    .line 3149
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    return v0
.end method

.method public declared-synchronized loadRelatedSMIL(Lcom/android/mms/model/MediaModel;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10
    .parameter "media1"
    .parameter "fromEditor"
    .parameter "subject"
    .parameter "msgUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 1323
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1254
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getMedia()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 1256
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-nez v0, :cond_2

    .line 1262
    move-object v0, p1

    .line 1267
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1268
    new-instance v4, Lcom/android/mms/model/SlideModel;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v6}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 1270
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    new-instance v5, Lcom/android/mms/model/TextModel;

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const-string v7, "text/plain"

    const-string v8, "text_0.txt"

    iget-object v9, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1273
    .local v5, text:Lcom/android/mms/model/TextModel;
    if-eqz p2, :cond_3

    .line 1274
    invoke-virtual {v5, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    .line 1275
    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1276
    if-eqz v0, :cond_4

    .line 1277
    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1278
    :cond_4
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->updateDuration()V

    .line 1279
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 1280
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1283
    if-eqz p4, :cond_6

    .line 1286
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1288
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1290
    iput-object p4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1292
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1293
    if-eqz v1, :cond_0

    .line 1294
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 1295
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1296
    .local v3, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 1298
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1299
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, p3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1301
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v3, v7}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V

    .line 1302
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1251
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v3           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    .end local v5           #text:Lcom/android/mms/model/TextModel;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1308
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v5       #text:Lcom/android/mms/model/TextModel;
    :cond_6
    :try_start_2
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1310
    .restart local v3       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-string v6, "application/vnd.wap.multipart.related"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 1312
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1314
    .restart local v1       #pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1316
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1318
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public previewSlideshow()V
    .locals 4

    .prologue
    .line 2686
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2687
    :cond_0
    const-string v1, "MessageBodyEditor"

    const-string v2, "previewSlideshow failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_0
    return-void

    .line 2690
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2691
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public recovery(Landroid/net/Uri;)V
    .locals 3
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 1447
    return-void
.end method

.method public recoveryMedia()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_1

    .line 636
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 637
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->clear()V

    .line 640
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 646
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->fromDraft:Z

    if-nez v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    :cond_2
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 652
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mTempText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 662
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->isClear:Z

    if-eqz v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mTemp:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v0, :cond_5

    .line 665
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 667
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 668
    return-void
.end method

.method public removeAllMedia()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 912
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 918
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    :cond_1
    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 923
    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 924
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 930
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v3, :cond_4

    .line 931
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v2

    .line 932
    .local v2, size:I
    if-lez v2, :cond_3

    .line 933
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 934
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3, v7}, Lcom/android/mms/msg/body/MixedMessageBody;->removeMedia(I)Lcom/android/mms/model/MediaModel;

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v3, :cond_3

    .line 936
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->notifyDataSetChanged()V

    .line 938
    .end local v0           #i:I
    :cond_3
    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 939
    const-string v3, ""

    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 941
    .end local v2           #size:I
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v3, :cond_5

    .line 942
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v3}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 945
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 946
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    invoke-static {v3, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 947
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 949
    .end local v1           #m:Landroid/os/Message;
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 950
    return-void
.end method

.method public removeMMSCallbackNumber()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3259
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMMSCallbackNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3260
    .local v0, callback:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3262
    .local v1, callbacklength:I
    const-string v3, "MessageBodyEditor"

    const-string v4, "removeMMSCallbackNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    if-eqz v3, :cond_2

    .line 3264
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideAttachmentView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3265
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3268
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/ui/SlideAttachmentView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    .end local v1           #callbacklength:I
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3271
    .restart local v1       #callbacklength:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v2

    .line 3272
    .restart local v2       #text:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeMedia(Lcom/android/mms/model/MediaModel;)V
    .locals 4
    .parameter "media"

    .prologue
    const/4 v3, 0x0

    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    :cond_0
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 961
    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 968
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->removeMedia(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListAdapter:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->notifyDataSetChanged()V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 975
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 976
    return-void
.end method

.method public removeSlide(I)V
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v7, 0x1

    .line 1878
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 1879
    :cond_0
    const-string v4, "MessageBodyEditor"

    const-string v5, "removeSlide failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1883
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->removeAllMedia()V

    .line 1884
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1885
    .local v2, m:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1907
    .end local v2           #m:Landroid/os/Message;
    :goto_0
    return-void

    .line 1889
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowModel()V

    .line 1891
    new-instance v3, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1892
    .local v3, slideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v3, p1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1894
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1895
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1894
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1896
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1898
    const/4 v1, 0x0

    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1899
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v1, v5}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 1898
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1901
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1902
    .restart local v2       #m:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    .end local v2           #m:Landroid/os/Message;
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    goto :goto_0

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_3
.end method

.method public setDefaultFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3187
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentView;->requestFocus()Z

    .line 3191
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentView;->isEditTextFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3194
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->setcursorposition()V

    .line 3196
    :cond_1
    return-void
.end method

.method public setDelayClear(Z)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1461
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mDelayClear:Z

    .line 1462
    monitor-exit v1

    .line 1463
    return-void

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEditorView(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1067
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    .line 1068
    return-void
.end method

.method public setListView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mListView:Landroid/view/View;

    .line 1072
    return-void
.end method

.method public declared-synchronized setMixedAttachment(Lcom/android/mms/msg/body/MixedMessageBody;Landroid/net/Uri;)V
    .locals 9
    .parameter "msgBody"
    .parameter "msgBodyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1551
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1552
    :try_start_0
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Message body may not be null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1555
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/msg/body/MixedMessageBody;->popFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    .line 1556
    .local v5, text:Lcom/android/mms/model/TextModel;
    if-eqz v5, :cond_1

    .line 1557
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1559
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1560
    const-string v6, ""

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1566
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1569
    .local v4, temp:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 1570
    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 1572
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v6, :cond_2

    .line 1573
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v6}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 1577
    :cond_2
    iput-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1580
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1581
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 1582
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1588
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1589
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1591
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCalendar()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCard()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->containsLocation()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1592
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    .line 1594
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v6

    if-ne v6, v8, :cond_7

    .line 1595
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->containsUnsupportedMedia()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1597
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1598
    .local v3, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 1599
    .local v2, media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/MessageBodyEditor;->presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    .line 1622
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    monitor-exit p0

    return-void

    .line 1602
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageBodyEditor;->presentUnsupportedMedia(Lcom/android/mms/msg/body/MixedMessageBody;)V

    goto :goto_0

    .line 1606
    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->containsLocation()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1607
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstLocation()Lcom/android/mms/model/LocationModel;

    move-result-object v1

    .line 1609
    .local v1, location:Lcom/android/mms/model/LocationModel;
    if-eqz v1, :cond_5

    .line 1610
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 1611
    .local v0, image:Lcom/android/mms/model/ImageModel;
    if-eqz v0, :cond_8

    .line 1612
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/mms/model/LocationModel;->setImageUri(Landroid/net/Uri;)V

    .line 1613
    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstLocation()Lcom/android/mms/model/LocationModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/MessageBodyEditor;->presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    goto :goto_0

    .line 1618
    .end local v0           #image:Lcom/android/mms/model/ImageModel;
    .end local v1           #location:Lcom/android/mms/model/LocationModel;
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v6}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v6

    if-le v6, v8, :cond_5

    .line 1620
    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageBodyEditor;->presentMultipleMedia(Lcom/android/mms/msg/body/MixedMessageBody;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setMixedMessageBody(Lcom/android/mms/msg/body/MixedMessageBody;Landroid/net/Uri;)V
    .locals 2
    .parameter "msgBody"
    .parameter "msgBodyUri"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MessageBodyEditor;->setMixedAttachment(Lcom/android/mms/msg/body/MixedMessageBody;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 527
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 487
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMsgBodyCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMsgBodyCharset:Ljava/lang/String;

    .line 1475
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    .line 1124
    return-void
.end method

.method public setOnThreadText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mOnThreadText:Ljava/lang/String;

    .line 1451
    return-void
.end method

.method public declared-synchronized setSlideAttachment(Landroid/net/Uri;Z)V
    .locals 14
    .parameter "msg"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1480
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1481
    :try_start_0
    new-instance v10, Lcom/google/android/mms/MmsException;

    const-string v11, "Message body may not be null."

    invoke-direct {v10, v11}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1485
    :cond_0
    if-eqz p2, :cond_4

    .line 1486
    :try_start_1
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUricheckDrm(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1489
    :goto_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1490
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mIsRelatedSMIL:Z

    .line 1492
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1495
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1496
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getPrefSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1497
    .local v9, tstr:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1498
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 1499
    .local v6, sm:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    .line 1500
    .local v8, tm:Lcom/android/mms/model/TextModel;
    if-eqz v8, :cond_5

    .line 1501
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1502
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    .line 1512
    .end local v6           #sm:Lcom/android/mms/model/SlideModel;
    .end local v8           #tm:Lcom/android/mms/model/TextModel;
    .end local v9           #tstr:Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez p2, :cond_8

    .line 1515
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    if-ge v1, v10, :cond_8

    .line 1516
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1517
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 1518
    invoke-virtual {v5, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    .line 1519
    .local v4, model:Lcom/android/mms/model/MediaModel;
    instance-of v10, v4, Lcom/android/mms/model/ImageModel;

    if-nez v10, :cond_2

    instance-of v10, v4, Lcom/android/mms/model/VideoModel;

    if-nez v10, :cond_2

    instance-of v10, v4, Lcom/android/mms/model/AudioModel;

    if-eqz v10, :cond_3

    .line 1520
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 1521
    .local v3, mSrc:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1522
    sget-object v10, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1523
    sget-object v10, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    :goto_4
    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1524
    .local v7, subString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1525
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, count:I
    sget v10, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    if-le v0, v10, :cond_3

    .line 1527
    sput v0, Lcom/android/mms/ui/MessageUtils;->ATTACHMENT_COUNT:I

    .line 1517
    .end local v0           #count:I
    .end local v3           #mSrc:Ljava/lang/String;
    .end local v7           #subString:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1488
    .end local v1           #i:I
    .end local v2           #k:I
    .end local v4           #model:Lcom/android/mms/model/MediaModel;
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto/16 :goto_0

    .line 1504
    .restart local v6       #sm:Lcom/android/mms/model/SlideModel;
    .restart local v8       #tm:Lcom/android/mms/model/TextModel;
    .restart local v9       #tstr:Ljava/lang/String;
    :cond_5
    new-instance v8, Lcom/android/mms/model/TextModel;

    .end local v8           #tm:Lcom/android/mms/model/TextModel;
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    const-string v11, "text/plain"

    const-string v12, "text_0.txt"

    iget-object v13, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v13}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v13

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1505
    .restart local v8       #tm:Lcom/android/mms/model/TextModel;
    invoke-virtual {v8, v9}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v6, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto/16 :goto_1

    .line 1523
    .end local v6           #sm:Lcom/android/mms/model/SlideModel;
    .end local v8           #tm:Lcom/android/mms/model/TextModel;
    .end local v9           #tstr:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #k:I
    .restart local v3       #mSrc:Ljava/lang/String;
    .restart local v4       #model:Lcom/android/mms/model/MediaModel;
    .restart local v5       #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1515
    .end local v3           #mSrc:Ljava/lang/String;
    .end local v4           #model:Lcom/android/mms/model/MediaModel;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1537
    .end local v1           #i:I
    .end local v2           #k:I
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    if-ge v1, v10, :cond_9

    .line 1538
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v1, v11}, Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1541
    .end local v1           #i:I
    :cond_9
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 1542
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBodyUri:Landroid/net/Uri;

    .line 1544
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    if-eqz v10, :cond_a

    .line 1545
    iget-object v10, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContentChangeListener:Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;

    invoke-interface {v10}, Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;->onContentChanged()V

    .line 1547
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1548
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSlideshow(Landroid/net/Uri;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideAttachment(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    :cond_0
    monitor-exit p0

    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSlideshowTextSize(F)V
    .locals 5
    .parameter "textSize"

    .prologue
    .line 3153
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3156
    .local v0, childNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3157
    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideAttachmentView;

    .line 3158
    .local v2, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    invoke-virtual {v2}, Lcom/android/mms/ui/SlideAttachmentView;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 3159
    .local v3, textView:Landroid/widget/EditText;
    if-eqz v3, :cond_0

    .line 3160
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 3156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3162
    .end local v2           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentView;
    .end local v3           #textView:Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method public setSlideshowUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "msgUri"

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;

    .line 1442
    return-void
.end method

.method public declared-synchronized setSlideshowcheckDrm(Landroid/net/Uri;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideAttachment(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_0
    monitor-exit p0

    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public showDurationDialog(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 2714
    const/16 v0, 0xa

    .line 2715
    .local v0, NUM_DIRECT_DURATIONS:I
    const/4 v3, 0x0

    .line 2716
    .local v3, duration_checked:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 2717
    :cond_0
    const-string v5, "MessageBodyEditor"

    const-string v6, "setSlideDuration failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_1
    :goto_0
    return-void

    .line 2721
    :cond_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2722
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 2724
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2725
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v3, v5, -0x1

    .line 2726
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2732
    :goto_1
    const/16 v5, 0xa

    if-lt v3, v5, :cond_3

    const/16 v3, 0xa

    .line 2733
    :cond_3
    const v5, 0x7f060031

    new-instance v6, Lcom/android/mms/ui/MessageBodyEditor$18;

    invoke-direct {v6, p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$18;-><init>(Lcom/android/mms/ui/MessageBodyEditor;I)V

    invoke-virtual {v1, v5, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2762
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 2763
    .local v2, dlg:Landroid/app/Dialog;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v5, :cond_1

    .line 2764
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 2728
    .end local v2           #dlg:Landroid/app/Dialog;
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2729
    .restart local v4       #title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v3, v5, -0x1

    .line 2730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 1
    .parameter "pb"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1246
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 1247
    return-void

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0
.end method

.method public toPduBody(Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 5
    .parameter "needUpdateUI"

    .prologue
    .line 1187
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1189
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_0

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->ensureMixedMessageBody(Z)V

    .line 1194
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v3, :cond_5

    .line 1196
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->isAllMediaExisted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1198
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1202
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    const-string v3, "application/vnd.wap.multipart.mixed"

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1203
    const-string v3, "text__01"

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1204
    .local v2, pt:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1206
    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v0

    .line 1207
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1208
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduBody;->removePart(I)Lcom/google/android/mms/pdu/PduPart;

    .line 1214
    .end local v0           #index:I
    .end local v2           #pt:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->m_bIsVCardVCalendar:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1216
    const-string v3, " "

    iput-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    .line 1220
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1221
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageBodyEditor;->mText:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageBodyEditor;->createTextPart(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 1235
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_3
    :goto_0
    return-object v1

    .line 1226
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1228
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_7

    .line 1230
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1231
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBodyEditor;->updateSlideshowModel()V

    .line 1233
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    goto :goto_0

    .line 1235
    :cond_7
    new-instance v1, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    goto :goto_0
.end method

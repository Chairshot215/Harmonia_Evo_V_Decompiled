.class public Lcom/android/mms/view/impl/EditableMediaViewImpl;
.super Landroid/widget/RelativeLayout;
.source "EditableMediaViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/EditableMediaView;


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "EditableMediaViewImpl"

.field static final TYPE_BLACK:I = 0x1

.field static final TYPE_GRAY:I


# instance fields
.field protected mBtnPreview:Landroid/widget/Button;

.field protected mBtnRemove:Landroid/view/View;

.field protected mBtnReplace:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field protected mInfoLayout:Landroid/view/View;

.field protected mIvPreview:Landroid/widget/ImageView;

.field protected mMainLayout:Landroid/view/View;

.field protected mMedia:Lcom/android/mms/model/MediaModel;

.field private mOnPreviewListener:Lcom/android/mms/view/EditableMediaView$OnPreviewListener;

.field private mOnRemoveListener:Lcom/android/mms/view/EditableMediaView$OnRemoveListener;

.field private mOnReplaceListener:Lcom/android/mms/view/EditableMediaView$OnReplaceListener;

.field protected mTvContentType:Landroid/widget/TextView;

.field protected mTvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/EditableMediaViewImpl;)Lcom/android/mms/view/EditableMediaView$OnPreviewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnPreviewListener:Lcom/android/mms/view/EditableMediaView$OnPreviewListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/view/impl/EditableMediaViewImpl;)Lcom/android/mms/view/EditableMediaView$OnRemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnRemoveListener:Lcom/android/mms/view/EditableMediaView$OnRemoveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/view/impl/EditableMediaViewImpl;)Lcom/android/mms/view/EditableMediaView$OnReplaceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnReplaceListener:Lcom/android/mms/view/EditableMediaView$OnReplaceListener;

    return-object v0
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/model/MediaModel;)V
    .locals 7
    .parameter "media"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMedia:Lcom/android/mms/model/MediaModel;

    .line 67
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->setPreview(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMedia:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMedia:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnReplace:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02018a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 85
    .local v1, mSize:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, kb:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 87
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    const-string v5, "pref_key_mms_max_size"

    const-string v6, "300000L"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, msgSizeLimit:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v2, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->setName(Ljava/lang/String;)V

    .line 106
    return-void

    .line 73
    .end local v0           #kb:Ljava/lang/String;
    .end local v1           #mSize:I
    .end local v2           #msgSizeLimit:I
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnReplace:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020187

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v4

    div-int/lit16 v1, v4, 0x400

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "EditableMediaViewImpl"

    const-string v1, "onFinishInflate: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMainLayout:Landroid/view/View;

    .line 116
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mInfoLayout:Landroid/view/View;

    .line 118
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mIvPreview:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mTvName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0e0045

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mTvContentType:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMainLayout:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;-><init>(Lcom/android/mms/view/impl/EditableMediaViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mInfoLayout:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/EditableMediaViewImpl$2;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/EditableMediaViewImpl$2;-><init>(Lcom/android/mms/view/impl/EditableMediaViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnRemove:Landroid/view/View;

    .line 156
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnReplace:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnRemove:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnRemove:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/EditableMediaViewImpl$3;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/EditableMediaViewImpl$3;-><init>(Lcom/android/mms/view/impl/EditableMediaViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnReplace:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mBtnReplace:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/EditableMediaViewImpl$4;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/EditableMediaViewImpl$4;-><init>(Lcom/android/mms/view/impl/EditableMediaViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_1
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "contentType"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mTvContentType:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public setMyvCardPreview()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mIvPreview:Landroid/widget/ImageView;

    const v2, 0x7f0200f3

    invoke-static {v0, v1, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->updateImageViewWithMyContactPhoto(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 229
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mTvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setOnPreviewListener(Lcom/android/mms/view/EditableMediaView$OnPreviewListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnPreviewListener:Lcom/android/mms/view/EditableMediaView$OnPreviewListener;

    .line 210
    return-void
.end method

.method public setOnRemoveListener(Lcom/android/mms/view/EditableMediaView$OnRemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnRemoveListener:Lcom/android/mms/view/EditableMediaView$OnRemoveListener;

    .line 214
    return-void
.end method

.method public setOnReplaceListener(Lcom/android/mms/view/EditableMediaView$OnReplaceListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnReplaceListener:Lcom/android/mms/view/EditableMediaView$OnReplaceListener;

    .line 218
    return-void
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mIvPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void
.end method

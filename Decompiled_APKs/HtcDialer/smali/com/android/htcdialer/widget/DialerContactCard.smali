.class public Lcom/android/htcdialer/widget/DialerContactCard;
.super Landroid/widget/RelativeLayout;
.source "DialerContactCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CallLogCard"


# instance fields
.field private mCallLogType:I

.field public mCallLogTypeIcon:Landroid/widget/ImageView;

.field private mCardButton:Landroid/widget/ImageView;

.field private mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

.field private mCurrentButtonTextResId:I

.field private mDetailButton:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mNameType:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field public mPhoto:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    .line 56
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    .line 57
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    .line 58
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    .line 60
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    .line 61
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    .line 62
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    .line 63
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 69
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCurrentButtonTextResId:I

    .line 92
    iput-object p1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mContext:Landroid/content/Context;

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    .line 56
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    .line 57
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    .line 58
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    .line 60
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    .line 61
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    .line 62
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    .line 63
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 69
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCurrentButtonTextResId:I

    .line 109
    iput-object p1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mContext:Landroid/content/Context;

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    .line 56
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    .line 57
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    .line 58
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    .line 60
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    .line 61
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    .line 62
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    .line 63
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 69
    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCurrentButtonTextResId:I

    .line 125
    iput-object p1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mContext:Landroid/content/Context;

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 410
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, resId:I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 169
    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f0b0051

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    .line 172
    const v2, 0x7f0b0050

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    .line 173
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    const-string v3, "common_b_button_small"

    invoke-direct {p0, v2, v3}, Lcom/android/htcdialer/widget/DialerContactCard;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 176
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    .line 177
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v2, 0x7f0b0052

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    .line 180
    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    .line 181
    const v2, 0x7f0b0053

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    .line 182
    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerContactCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 188
    .local v0, isCornerEnabled:Z
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRoundedCornerEnabled(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f080004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setCornerRadius(I)V

    .line 191
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f080005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setCornerStrokeWidth(I)V

    .line 194
    :cond_0
    return-void
.end method

.method private setLayout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->removeAllViews()V

    .line 157
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 160
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->initView()V

    .line 162
    return-void
.end method

.method private final setRoundCornerBitmapToPhoto(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageView"
    .parameter "bmSrc"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-static {v1, p2, v2}, Lcom/android/htcdialer/util/ContactsUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    .local v0, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    const/4 v0, 0x0

    .line 407
    return-void
.end method


# virtual methods
.method public getCallLogType()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    return v0
.end method

.method public getCallLogTypeIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClickListener()Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    return-object v0
.end method

.method public getContactCardView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerContactCard;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    invoke-interface {v0}, Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;->onClickDetailButton()V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCardButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    invoke-interface {v0}, Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;->onClickCard()V

    goto :goto_0
.end method

.method public setCallLogType(I)V
    .locals 0
    .parameter "callLogType"

    .prologue
    .line 380
    iput p1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 381
    return-void
.end method

.method public setCallTypeIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setCallTypeIcon(II)V
    .locals 1
    .parameter "resId"
    .parameter "callLogType"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :cond_0
    iput p2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 283
    return-void
.end method

.method public setCallTypeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setCallTypeIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "callLogType"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_0
    iput p2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mCallLogType:I

    .line 259
    return-void
.end method

.method public setDetialButton(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mName:Landroid/widget/TextView;

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setNumberType(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "numberType"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    .line 320
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mNameType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :cond_1
    return-void

    .line 318
    .end local v0           #visibility:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;)V
    .locals 0
    .parameter "panelclicklistener"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mClickListener:Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;

    .line 355
    return-void
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 228
    .local v1, bitDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1           #bitDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setTime(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerContactCard;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    return-void
.end method

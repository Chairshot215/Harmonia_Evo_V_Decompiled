.class public Lcom/htc/clock3dwidget/socialclock/SocialView;
.super Ljava/lang/Object;
.source "SocialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;,
        Lcom/htc/clock3dwidget/socialclock/SocialView$MessageSpan;
    }
.end annotation


# instance fields
.field private mApContext:Landroid/content/Context;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentStringBuilder:Landroid/text/SpannableStringBuilder;

.field protected mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mImageSpanLike:Landroid/text/style/ImageSpan;

.field private mImageSpanReplay:Landroid/text/style/ImageSpan;

.field private mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mInflatedCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

.field private mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mLoggedInTap:Ljava/lang/String;

.field private mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

.field private mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mResContext:Landroid/content/Context;

.field private mSocialClickLand:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

.field private mSocialClickPort:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

.field private mSocialEmpty:Ljava/lang/String;

.field private mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .parameter "apContext"
    .parameter "resContext"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialView;Lcom/htc/clock3dwidget/socialclock/SocialView$1;)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickPort:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    .line 47
    new-instance v2, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialView;Lcom/htc/clock3dwidget/socialclock/SocialView$1;)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickLand:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    .line 56
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 290
    new-instance v2, Lcom/htc/clock3dwidget/socialclock/SocialView$1;

    invoke-direct {v2, p0}, Lcom/htc/clock3dwidget/socialclock/SocialView$1;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialView;)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInflatedCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

    .line 107
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mResContext:Landroid/content/Context;

    .line 109
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mLoggedInTap:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialEmpty:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, dLike:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mImageSpanLike:Landroid/text/style/ImageSpan;

    .line 116
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, dReplay:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mImageSpanReplay:Landroid/text/style/ImageSpan;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/socialclock/SocialView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/socialclock/SocialView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialView;->updateIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private formatStr(Lcom/htc/clock/util/social/SocialData;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 228
    invoke-virtual {p1}, Lcom/htc/clock/util/social/SocialData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/clock/util/social/SocialData;->isFlicker()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialView;->getFlickrMessage(Lcom/htc/clock/util/social/SocialData;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 237
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 238
    .local v4, userSpan:Landroid/text/style/StyleSpan;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v4, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v8, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 244
    .local v1, content:Ljava/lang/CharSequence;
    return-object v1

    .line 234
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v1           #content:Ljava/lang/CharSequence;
    .end local v4           #userSpan:Landroid/text/style/StyleSpan;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/clock/util/social/SocialData;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getFlickrMessage(Lcom/htc/clock/util/social/SocialData;)Ljava/lang/String;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 248
    iget-object v4, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/htc/clock/util/social/SocialData;->getUploaded(Landroid/content/Context;)[I

    move-result-object v2

    .line 249
    .local v2, uploaded:[I
    aget v1, v2, v10

    .line 250
    .local v1, photos:I
    aget v3, v2, v9

    .line 251
    .local v3, videos:I
    const-string v0, "\n"

    .line 252
    .local v0, message:Ljava/lang/String;
    if-gtz v1, :cond_0

    if-lez v3, :cond_1

    .line 253
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_1
    if-lez v1, :cond_2

    .line 257
    if-ne v1, v9, :cond_5

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060022

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_2
    :goto_0
    if-lez v3, :cond_4

    .line 264
    if-lez v1, :cond_3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_3
    if-ne v3, v9, :cond_6

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_4
    :goto_1
    return-object v0

    .line 260
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060021

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060023

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showEmptyText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 219
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 220
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 221
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 222
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 223
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method private updateIcon(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 207
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20800c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 210
    .local v0, defaultIcon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 215
    .end local v0           #defaultIcon:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 86
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickPort:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p2, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickLand:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->setInflatedCallback(Lcom/htc/clock/util/social/SocialData$InflatedCallback;)V

    .line 103
    :cond_0
    return-void
.end method

.method public init(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V
    .locals 1
    .parameter "controls"

    .prologue
    .line 75
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 76
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 77
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 78
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 79
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 81
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 82
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 83
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 288
    return-void
.end method

.method public unbind(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 93
    iget-object v0, p1, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickPort:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p2, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialClickLand:Lcom/htc/clock3dwidget/socialclock/SocialView$SocialClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public updateUI(ZLcom/htc/clock/util/social/SocialData;)V
    .locals 11
    .parameter "isLoggedIn"
    .parameter "data"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const-string v6, "SocialNetworkView~ updateUI not login"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mLoggedInTap:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/clock3dwidget/socialclock/SocialView;->showEmptyText(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p2, :cond_6

    .line 139
    const-string v6, "SocialNetworkView~ updateUI normal"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 143
    invoke-direct {p0, p2}, Lcom/htc/clock3dwidget/socialclock/SocialView;->formatStr(Lcom/htc/clock/util/social/SocialData;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    .local v2, content:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 148
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mResContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Lcom/htc/clock/util/social/SocialData;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    iput-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    .line 149
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    iget-object v7, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mInflatedCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

    invoke-virtual {v6, v7}, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->setInflatedCallback(Lcom/htc/clock/util/social/SocialData$InflatedCallback;)V

    .line 150
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mRemoteIcon:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    invoke-virtual {v6}, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/clock3dwidget/socialclock/SocialView;->updateIcon(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, indicator:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Lcom/htc/clock/util/social/SocialData;->getIconIndicator(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_4

    .line 157
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 164
    :goto_1
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mApContext:Landroid/content/Context;

    invoke-virtual {p2, v7}, Lcom/htc/clock/util/social/SocialData;->getPastTimeString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 167
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 169
    invoke-virtual {p2}, Lcom/htc/clock/util/social/SocialData;->getLikeCnt()I

    move-result v6

    int-to-long v4, v6

    .line 170
    .local v4, like:J
    invoke-virtual {p2}, Lcom/htc/clock/util/social/SocialData;->getCommentCnt()I

    move-result v6

    int-to-long v0, v6

    .line 173
    .local v0, comment:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 174
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mImageSpanReplay:Landroid/text/style/ImageSpan;

    iget-object v8, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 186
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mImageSpanLike:Landroid/text/style/ImageSpan;

    iget-object v8, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 190
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    .line 194
    :cond_3
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mContentStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 160
    .end local v0           #comment:J
    .end local v4           #like:J
    :cond_4
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 197
    .restart local v0       #comment:J
    .restart local v4       #like:J
    :cond_5
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 201
    .end local v0           #comment:J
    .end local v2           #content:Ljava/lang/CharSequence;
    .end local v3           #indicator:Landroid/graphics/Bitmap;
    .end local v4           #like:J
    :cond_6
    const-string v6, "SocialNetworkView~ updateUI no data"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialView;->mSocialEmpty:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/clock3dwidget/socialclock/SocialView;->showEmptyText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

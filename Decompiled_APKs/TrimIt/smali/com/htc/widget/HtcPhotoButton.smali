.class public Lcom/htc/widget/HtcPhotoButton;
.super Landroid/widget/RelativeLayout;
.source "HtcPhotoButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPhotoButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLeft:Landroid/widget/RelativeLayout;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPhoto:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p1, p0, Lcom/htc/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/HtcPhotoButton;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p1, p0, Lcom/htc/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/HtcPhotoButton;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/htc/widget/HtcPhotoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x2020248

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    .line 109
    const v1, 0x2020249

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    .line 110
    const v1, 0x202004c

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    .line 111
    const v1, 0x2020118

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingLeft:I

    .line 113
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    .line 114
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    .line 115
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    .line 116
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->setImageResource(I)V

    .line 117
    return-void
.end method

.method private setLayout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/widget/HtcPhotoButton;->removeAllViews()V

    .line 74
    iget-object v2, p0, Lcom/htc/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x20900e2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 78
    .local v1, layout:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->addView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/htc/widget/HtcPhotoButton;->initView()V

    .line 86
    return-void

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no theme resource"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setLayout(I)V
    .locals 4
    .parameter "inputLayoutid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/htc/widget/HtcPhotoButton;->removeAllViews()V

    .line 91
    iget-object v2, p0, Lcom/htc/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x20900e2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 95
    .local v1, layout:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcPhotoButton;->addView(Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lcom/htc/widget/HtcPhotoButton;->initView()V

    .line 103
    return-void

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no theme resource"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getImageWidth()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 217
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 224
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v4, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v4, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 5
    .parameter "resid"

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v4, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLeft:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingTop:I

    iget v3, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingRight:I

    iget v4, p0, Lcom/htc/widget/HtcPhotoButton;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/htc/widget/HtcPhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 187
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 200
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 194
    iget-object v1, p0, Lcom/htc/widget/HtcPhotoButton;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

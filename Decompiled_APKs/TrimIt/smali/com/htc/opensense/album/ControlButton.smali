.class public Lcom/htc/opensense/album/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"


# static fields
.field public static final BUTTON_IMAGE:I = 0x0

.field public static final BUTTON_TEXT:I = 0x1

.field public static final BUTTON_TEXTIMAGE:I = 0x2

.field public static final tag:Ljava/lang/String; = "ControlButton"


# instance fields
.field mButton:Landroid/view/View;

.field private mId:I

.field private mResId:I

.field private mSelector:I

.field private mText:Ljava/lang/String;

.field private mType:I

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 3
    .parameter "root"
    .parameter "id"
    .parameter "viewId"
    .parameter "resId"
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 36
    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    .line 37
    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    .line 38
    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    .line 39
    iput p5, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    .line 41
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    .line 43
    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    .line 46
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, btnView:Landroid/view/View;
    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 49
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 51
    .local v0, btn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 54
    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 74
    .end local v0           #btn:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #btnView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 58
    .restart local v1       #btnView:Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 60
    .local v0, btn:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    .line 70
    .end local v0           #btn:Landroid/widget/ImageView;
    .end local v1           #btnView:Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, btn:Landroid/widget/Button;
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 72
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;IIIII)V
    .locals 5
    .parameter "root"
    .parameter "id"
    .parameter "viewId"
    .parameter "resId"
    .parameter "drawableId"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 96
    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    .line 97
    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    .line 98
    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    .line 99
    iput p6, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    .line 101
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    .line 103
    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    .line 106
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, btnView:Landroid/view/View;
    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 109
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 111
    .local v0, btn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 113
    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 141
    .end local v0           #btn:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #btnView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    return-void

    .line 117
    .restart local v1       #btnView:Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 119
    .local v0, btn:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    .line 127
    .end local v0           #btn:Landroid/widget/ImageView;
    .end local v1           #btnView:Landroid/view/View;
    :cond_3
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-ne v2, v3, :cond_4

    .line 129
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    .local v0, btn:Landroid/widget/Button;
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 131
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    .line 135
    .end local v0           #btn:Landroid/widget/Button;
    :cond_4
    iput p5, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    .line 136
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    .restart local v0       #btn:Landroid/widget/Button;
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 138
    invoke-virtual {v0, v4, p5, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 139
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;IILjava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "id"
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    .line 86
    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    .line 87
    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    .line 88
    iput-object p4, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    .line 89
    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 305
    instance-of v0, p1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_0

    move-object v0, p1

    .line 307
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 308
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 312
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_0

    move-object v0, p1

    .line 313
    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 314
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_2
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 317
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 318
    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 323
    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 324
    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 325
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_4
    const-string v0, "ControlButton"

    const-string v1, "bindView. wrong view."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    return v0
.end method

.method public getImageSelector()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    return v0
.end method

.method public refreshLayout(Landroid/view/View;)V
    .locals 5
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    .line 149
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, btnView:Landroid/view/View;
    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 152
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 154
    .local v0, btn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 155
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 156
    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    .line 182
    .end local v0           #btn:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #btnView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    return-void

    .line 160
    .restart local v1       #btnView:Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 162
    .local v0, btn:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 163
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    .line 169
    .end local v0           #btn:Landroid/widget/ImageView;
    .end local v1           #btnView:Landroid/view/View;
    :cond_3
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-ne v2, v3, :cond_4

    .line 171
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    .local v0, btn:Landroid/widget/Button;
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 173
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    .line 177
    .end local v0           #btn:Landroid/widget/Button;
    :cond_4
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    .restart local v0       #btn:Landroid/widget/Button;
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 179
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 180
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "nAlpha"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "bEnabled"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setImageSelector(I)Z
    .locals 3
    .parameter "selector"

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 194
    :cond_1
    iput p1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    .line 195
    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 211
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-void
.end method

.method public setText(I)Z
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v1, 0x1

    .line 236
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 226
    goto :goto_0
.end method

.method public setVisibility(I)Z
    .locals 1
    .parameter "nVisibility"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method

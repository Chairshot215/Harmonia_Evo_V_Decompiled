.class public Lcom/android/phone/widget/SNStatusPanel;
.super Landroid/widget/RelativeLayout;
.source "SNStatusPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_CALLER_ID_ENHANCEMENT:Z = false

.field private static final SUPPORT_GESTURE:Z = true

.field private static final TAG:Ljava/lang/String; = "SNStatusPanel"


# instance fields
.field private final ICON_SPACE:Ljava/lang/String;

.field private mDetector:Landroid/view/GestureDetector;

.field private mExpandIcon:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsExpaneded:Z

.field private mStatus:Landroid/widget/TextView;

.field private mTimestampLabel:Landroid/widget/TextView;

.field private mTouchArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide v0, 0x4000cccccccccccdL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/widget/SNStatusPanel;->ENABLE_CALLER_ID_ENHANCEMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "      "

    iput-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->ICON_SPACE:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, "      "

    iput-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->ICON_SPACE:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-string v0, "      "

    iput-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->ICON_SPACE:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/widget/SNStatusPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/widget/SNStatusPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->shrink()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/widget/SNStatusPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->expand()V

    return-void
.end method

.method private expand()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/widget/SNStatusPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/SNStatusPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mExpandIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mTouchArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    .line 88
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/phone/widget/SNStatusPanel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/widget/SNStatusPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 94
    .local v0, alpha:I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 96
    .end local v0           #alpha:I
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->initGestureDetector()V

    .line 97
    invoke-virtual {p0, p0}, Lcom/android/phone/widget/SNStatusPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/android/phone/widget/SNStatusPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f08014e

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/SNStatusPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mTouchArea:Landroid/view/View;

    .line 101
    iget-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mTouchArea:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/SNStatusPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mExpandIcon:Landroid/view/View;

    .line 104
    const v2, 0x7f080067

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/SNStatusPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f08014f

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/SNStatusPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mTimestampLabel:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0800b1

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/SNStatusPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mIcon:Landroid/widget/ImageView;

    .line 108
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->shrink()V

    .line 109
    return-void
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/android/phone/widget/SNStatusPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/widget/SNStatusPanel$1;-><init>(Lcom/android/phone/widget/SNStatusPanel;)V

    .line 137
    .local v0, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/phone/widget/SNStatusPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/phone/widget/SNStatusPanel;->mDetector:Landroid/view/GestureDetector;

    .line 138
    return-void
.end method

.method private shrink()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/widget/SNStatusPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/SNStatusPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mExpandIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mTouchArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    iput-boolean v3, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    .line 191
    return-void
.end method


# virtual methods
.method public getTimestampLabel(JLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "time"
    .parameter "labelClause"

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v9, 0x1

    .line 201
    .local v9, validTimestamp:Z
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 203
    .local v8, validLabel:Z
    if-eqz v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v7

    .line 207
    .local v7, timeClause:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01f6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .end local v7           #timeClause:Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    return-object v7

    .line 200
    .end local v8           #validLabel:Z
    .end local v9           #validTimestamp:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 203
    .restart local v8       #validLabel:Z
    .restart local v9       #validTimestamp:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 211
    .restart local v7       #timeClause:Ljava/lang/CharSequence;
    :cond_3
    if-eqz v8, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01f5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 214
    :cond_4
    if-nez v9, :cond_0

    .line 217
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mTouchArea:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->shrink()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->init()V

    .line 149
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 150
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/phone/widget/SNStatusPanel;->shrink()V

    .line 231
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 232
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setTimestampLabel(JLjava/lang/CharSequence;)V
    .locals 1
    .parameter "time"
    .parameter "labelClause"

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/widget/SNStatusPanel;->getTimestampLabel(JLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/SNStatusPanel;->setTimestampLabel(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setTimestampLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel;->mTimestampLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

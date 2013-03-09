.class public Lcom/android/htcdialer/carhome/MyContactMatrixItem;
.super Landroid/widget/RelativeLayout;
.source "MyContactMatrixItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Carhome Make call"

.field private static final MAXIMUN_NOTIFICATION:I = 0x63

.field private static final localLOGV:Z


# instance fields
.field private context_:Landroid/content/Context;

.field private mCallAssist:Landroid/graphics/drawable/Drawable;

.field private mCallHome:Landroid/graphics/drawable/Drawable;

.field private mCallMobile:Landroid/graphics/drawable/Drawable;

.field private mCallWork:Landroid/graphics/drawable/Drawable;

.field private mCallpager:Landroid/graphics/drawable/Drawable;

.field private mDefaultAction:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mNameShadow:Landroid/widget/TextView;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPhoto:Landroid/widget/ImageView;

.field private mRecCallInComings:Landroid/graphics/drawable/Drawable;

.field private mRecCallMissed:Landroid/graphics/drawable/Drawable;

.field private mRecCallOutgoing:Landroid/graphics/drawable/Drawable;

.field private mRecentType:Landroid/widget/ImageView;

.field private mSendCar:Landroid/graphics/drawable/Drawable;

.field private mSendMail:Landroid/graphics/drawable/Drawable;

.field private mSendMsg:Landroid/graphics/drawable/Drawable;

.field private mSendRadio:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->context_:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->context_:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->initView()V

    .line 57
    return-void
.end method

.method private inflateLayout(I)V
    .locals 2
    .parameter "resLayout"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->context_:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->context_:Landroid/content/Context;

    .line 62
    const v0, 0x7f030004

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->inflateLayout(I)V

    .line 64
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mPhoto:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecentType:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mName:Landroid/widget/TextView;

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, i:I
    add-int/lit8 v0, v0, 0x1

    .line 303
    return-void
.end method

.method public setDefaultActionIcon(J)V
    .locals 3
    .parameter "number_type"

    .prologue
    const v2, 0x208015f

    .line 73
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 76
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :cond_2
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :cond_5
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :cond_8
    const-wide/16 v0, 0x6

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x12

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    .line 100
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 103
    :cond_b
    const-wide/16 v0, 0x13

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 106
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_c
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 109
    :cond_d
    const-wide/16 v0, 0x9

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    .line 112
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_e
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 115
    :cond_f
    const-wide/16 v0, 0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 118
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 123
    :cond_11
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    .line 124
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    .line 125
    :cond_12
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setOnClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "onItemClickListener"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 296
    return-void
.end method

.method public updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 131
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 141
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->displayname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mName:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->displayname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->call_type:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 160
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallInComings:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20809b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallInComings:Landroid/graphics/drawable/Drawable;

    .line 162
    :cond_2
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecentType:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallInComings:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_2
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->setDefaultActionIcon(J)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 148
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mName:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_4
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mName:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 164
    :cond_5
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->call_type:J

    const-wide/16 v7, 0x3

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 166
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallMissed:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20809b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallMissed:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_6
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecentType:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallMissed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 172
    :cond_7
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallOutgoing:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_8

    .line 173
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20809b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallOutgoing:Landroid/graphics/drawable/Drawable;

    .line 174
    :cond_8
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecentType:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecCallOutgoing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 182
    :cond_9
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mName:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    .line 186
    .local v3, sDefaultActionInfo:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 187
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, sContactCardPattern:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mRecentType:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-boolean v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    if-eqz v5, :cond_0

    .line 193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 196
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 197
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :cond_a
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 199
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->setDefaultActionIcon(J)V

    goto/16 :goto_0

    .line 201
    :cond_b
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 204
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 205
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->setDefaultActionIcon(J)V

    goto/16 :goto_0

    .line 209
    :cond_c
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, nSaperateIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 212
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, sActionType:Ljava/lang/String;
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_mobile:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 216
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_d

    .line 217
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208015f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_d
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 221
    :cond_e
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_work:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 222
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_f

    .line 223
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080160

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    .line 225
    :cond_f
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallWork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 227
    :cond_10
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_home:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 228
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_11

    .line 229
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208015e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_11
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallHome:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 233
    :cond_12
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_pager:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 234
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_13

    .line 235
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080164

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_13
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallpager:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 239
    :cond_14
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_assistant:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 240
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_15

    .line 241
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_15
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallAssist:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 245
    :cond_16
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_sms:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 250
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 251
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->setDefaultActionIcon(J)V

    goto/16 :goto_0

    .line 253
    :cond_17
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_mail:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 258
    iget-object v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 259
    iget-wide v5, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->setDefaultActionIcon(J)V

    goto/16 :goto_0

    .line 261
    :cond_18
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_car:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 262
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_19

    .line 263
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080161

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    .line 265
    :cond_19
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendCar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 267
    :cond_1a
    sget-object v5, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_radio:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 268
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1b

    .line 269
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080165

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    .line 271
    :cond_1b
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mSendRadio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 275
    :cond_1c
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1d

    .line 276
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208015f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    .line 278
    :cond_1d
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mDefaultAction:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->mCallMobile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

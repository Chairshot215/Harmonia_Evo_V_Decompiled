.class public Lcom/android/htccontacts/widget/title/DetailHeaderBar;
.super Lcom/htc/widget/HeaderBarTall;
.source "DetailHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/title/DetailHeaderBar$LinkType;
    }
.end annotation


# static fields
.field public static final TYPE_ADD_BUTTON:I = 0x2

.field public static final TYPE_GENERIC:I = 0x1

.field public static final TYPE_GROUP_ADD_BUTTON:I = 0x4

.field public static final TYPE_GROUP_EDIT_BUTTON:I = 0x5

.field public static final TYPE_GROUP_GENERIC:I = 0x3

.field public static final TYPE_LINK:I = 0x6


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryRes:I

.field protected mContext:Landroid/content/Context;

.field private mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderType:I

.field private mIsToShowActionButton:Z

.field private mIsToShowLinkButton:Z

.field private mQueryHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;

.field private minnerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarTall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mQueryHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I

    .line 46
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowLinkButton:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowActionButton:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->init(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "headerType"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput p3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowLinkButton:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildHeaderBar()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->removeAllViews()V

    .line 134
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setDefaultImageButton()V

    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addLeftView(Landroid/view/View;)V

    .line 136
    iget v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 142
    :goto_0
    iget v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_1
    :pswitch_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addCenterView(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_1

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addRightView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_1

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->addRightView(Landroid/view/View;)V

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 82
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    .line 83
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    .line 84
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    .line 85
    new-instance v0, Lcom/htc/widget/HeaderBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 86
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private setDefaultImageButton()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 163
    iget v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 170
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_unlink"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 177
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    if-ne v1, v6, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_add"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 188
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 191
    :cond_2
    return-void

    .line 166
    .end local v0           #resId:I
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    goto :goto_0

    .line 180
    .restart local v0       #resId:I
    :cond_4
    iget v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 181
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a0238

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_compose"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 183
    :cond_5
    iget v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    if-ne v1, v5, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_compose"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public buildHeaderBar(I)V
    .locals 1
    .parameter "headerType"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderType:I

    .line 91
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar()V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->enableSecondBackground(Z)V

    .line 94
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->enableLeftDivider(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageAdd:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderDropDown()Lcom/htc/widget/HeaderBarDropDown;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method public getHeaderImage()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method public getHeaderText()Lcom/htc/widget/HeaderBarText;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    return-object v0
.end method

.method public getLinkView()Lcom/htc/widget/HeaderBarImage;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HeaderBarTall;->onMeasure(II)V

    .line 118
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 119
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public queryTitleBar(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mQueryHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;J)V

    .line 332
    return-void
.end method

.method public queryTitleBarData(Landroid/net/Uri;J)V
    .locals 1
    .parameter "contactUri"
    .parameter "queryDelayInMillis"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;J)V

    .line 336
    return-void
.end method

.method public queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 2
    .parameter "contactUri"
    .parameter "queryHandler"

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;J)V

    .line 340
    return-void
.end method

.method public queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;J)V
    .locals 3
    .parameter "contactUri"
    .parameter "queryHandler"
    .parameter "queryDelayInMillis"

    .prologue
    .line 343
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUIHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;-><init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar;Landroid/net/Uri;)V

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 323
    iput p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I

    .line 324
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;

    .line 320
    return-void
.end method

.method protected setHeaderBarbackground()V
    .locals 4

    .prologue
    .line 100
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 103
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 104
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 108
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    const v3, 0x20806b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 112
    .end local v0           #childIndex:I
    .end local v1           #layoutView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setHeaderImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 308
    return-void
.end method

.method public setHeaderImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "mBitmap"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 300
    return-void
.end method

.method public setHeaderImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "mDrawable"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method public setHeaderPrimaryText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 209
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 210
    return-void
.end method

.method public setHeaderPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 215
    return-void
.end method

.method public setHeaderSecondaryLeftText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 219
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 220
    return-void
.end method

.method public setHeaderSecondaryLeftText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 225
    return-void
.end method

.method public setHeaderText(II)V
    .locals 2
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 195
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 197
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 198
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 205
    return-void
.end method

.method public setIsToShowActionButton(Z)V
    .locals 0
    .parameter "toShow"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowActionButton:Z

    .line 316
    return-void
.end method

.method public setIsToShowLinkButton(Z)V
    .locals 0
    .parameter "toShow"

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowLinkButton:Z

    .line 312
    return-void
.end method

.method public setLinkImage(I)V
    .locals 5
    .parameter "linkType"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, resId:I
    if-nez p1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_link"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 241
    return-void

    .line 236
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_unlink"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setLinkLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 245
    return-void
.end method

.method public setLinkLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setLinkSuggestBubble(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 252
    if-lez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setBubbleVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setBubbleCount(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageLink:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setBubbleVisibility(I)V

    goto :goto_0
.end method

.method public setLinkTitleName(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "editable"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarDropDown;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    .line 266
    return-void
.end method

.method public setLinkTitlePhoto(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bp"
    .parameter "editable"

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->enableLeftDivider(Z)V

    .line 280
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mHeaderImageFrame:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x20800c2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    goto :goto_0
.end method

.method public setQueryHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "queryHandler"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mQueryHandler:Landroid/os/Handler;

    .line 328
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/htc/widget/HeaderBarTall;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

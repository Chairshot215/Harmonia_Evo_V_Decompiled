.class public Lcom/htc/app/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcAlertController$AlertParams;,
        Lcom/htc/app/HtcAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 112
    iput v1, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    .line 125
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 130
    iput v1, p0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    .line 141
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController;->mTitleDivider:Z

    .line 142
    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    .line 145
    iput v0, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    .line 147
    new-instance v0, Lcom/htc/app/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcAlertController$1;-><init>(Lcom/htc/app/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 198
    iput-object p3, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 199
    new-instance v0, Lcom/htc/app/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/app/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/app/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/app/HtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    :goto_0
    return v2

    .line 207
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 208
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 211
    check-cast v1, Landroid/view/ViewGroup;

    .line 212
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 213
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 214
    add-int/lit8 v0, v0, -0x1

    .line 215
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 216
    invoke-static {p0}, Lcom/htc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 221
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13
    .parameter "button"

    .prologue
    const/16 v12, 0xf0

    const/4 v11, 0x0

    const/16 v10, 0x1e0

    const/16 v8, 0x140

    const/4 v9, 0x1

    .line 806
    const v6, 0x3f333333

    .line 807
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 808
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 811
    .local v0, conf:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v12, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    .line 813
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_3

    .line 814
    const v6, 0x3f028f5c

    .line 853
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 854
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 855
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 856
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 861
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 862
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 863
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 866
    return-void

    .line 816
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_3
    const v6, 0x3f028f5c

    goto :goto_0

    .line 820
    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v10, :cond_8

    .line 822
    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_7

    .line 823
    const v6, 0x3ee66666

    goto :goto_0

    .line 825
    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0

    .line 829
    :cond_8
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_9

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v10, :cond_a

    :cond_9
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_c

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_c

    .line 831
    :cond_a
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_b

    .line 832
    const v6, 0x3ec28f5c

    goto :goto_0

    .line 834
    :cond_b
    const v6, 0x3edc28f6

    goto :goto_0

    .line 837
    :cond_c
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_d

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x3c0

    if-eq v7, v8, :cond_e

    :cond_d
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x3c0

    if-ne v7, v8, :cond_10

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_10

    .line 839
    :cond_e
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_f

    .line 840
    const v6, 0x3eb91687

    goto/16 :goto_0

    .line 842
    :cond_f
    const v6, 0x3f35c28f

    goto/16 :goto_0

    .line 845
    :cond_10
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_11

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x500

    if-eq v7, v8, :cond_12

    :cond_11
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x500

    if-ne v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_2

    .line 847
    :cond_12
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_13

    .line 848
    const/high16 v6, 0x3ee0

    goto/16 :goto_0

    .line 850
    :cond_13
    const v6, 0x3e958e22

    goto/16 :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 874
    .local v10, fullDark:I
    if-nez v10, :cond_0

    .line 875
    const/16 v20, 0x0

    const v21, 0x20805e8

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 877
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 878
    .local v17, topDark:I
    if-nez v17, :cond_1

    .line 879
    const/16 v20, 0x1

    const v21, 0x20805eb

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 881
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 882
    .local v7, centerDark:I
    if-nez v7, :cond_2

    .line 883
    const/16 v20, 0x2

    const v21, 0x20805e5

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 885
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 886
    .local v4, bottomDark:I
    if-nez v4, :cond_3

    .line 887
    const/16 v20, 0x3

    const v21, 0x20805e2

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 889
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 890
    .local v9, fullBright:I
    if-nez v9, :cond_4

    .line 891
    const/16 v20, 0x4

    const v21, 0x20805e7

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 893
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 894
    .local v16, topBright:I
    if-nez v16, :cond_5

    .line 895
    const/16 v20, 0x5

    const v21, 0x20805ea

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 897
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 898
    .local v6, centerBright:I
    if-nez v6, :cond_6

    .line 899
    const/16 v20, 0x6

    const v21, 0x20805e4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 901
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 902
    .local v3, bottomBright:I
    if-nez v3, :cond_7

    .line 903
    const/16 v20, 0x7

    const v21, 0x20805e1

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 905
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 906
    .local v5, bottomMedium:I
    if-nez v5, :cond_8

    .line 907
    const/16 v20, 0x8

    const v21, 0x20805e3

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 909
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 910
    .local v8, centerMedium:I
    if-nez v8, :cond_9

    .line 911
    const/16 v20, 0x9

    const v21, 0x20805e6

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 923
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 924
    .local v19, views:[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 925
    .local v13, light:[Z
    const/4 v12, 0x0

    .line 926
    .local v12, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 928
    .local v11, lastLight:Z
    const/4 v14, 0x0

    .line 929
    .local v14, pos:I
    if-eqz p6, :cond_a

    .line 930
    aput-object p1, v19, v14

    .line 931
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 932
    add-int/lit8 v14, v14, 0x1

    .line 940
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    .end local p2
    :cond_b
    aput-object p2, v19, v14

    .line 944
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 946
    add-int/lit8 v14, v14, 0x1

    .line 947
    if-eqz p3, :cond_c

    .line 948
    aput-object p3, v19, v14

    .line 949
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 950
    add-int/lit8 v14, v14, 0x1

    .line 952
    :cond_c
    if-eqz p4, :cond_d

    .line 953
    aput-object p7, v19, v14

    .line 954
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 957
    :cond_d
    const/4 v15, 0x0

    .line 958
    .local v15, setView:Z
    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_13

    .line 959
    aget-object v18, v19, v14

    .line 960
    .local v18, v:Landroid/view/View;
    if-nez v18, :cond_e

    .line 958
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 963
    :cond_e
    if-eqz v12, :cond_f

    .line 964
    if-nez v15, :cond_11

    .line 965
    if-eqz v11, :cond_10

    move/from16 v20, v16

    :goto_2
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 969
    :goto_3
    const/4 v15, 0x1

    .line 971
    :cond_f
    move-object/from16 v12, v18

    .line 972
    aget-boolean v11, v13, v14

    goto :goto_1

    :cond_10
    move/from16 v20, v17

    .line 965
    goto :goto_2

    .line 967
    :cond_11
    if-eqz v11, :cond_12

    move/from16 v20, v6

    :goto_4
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_12
    move/from16 v20, v7

    goto :goto_4

    .line 975
    .end local v18           #v:Landroid/view/View;
    :cond_13
    if-eqz v12, :cond_14

    .line 976
    if-eqz v15, :cond_18

    .line 981
    if-eqz v11, :cond_17

    if-eqz p4, :cond_16

    .end local v5           #bottomMedium:I
    :goto_5
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1013
    .end local v9           #fullBright:I
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1015
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 1020
    :cond_15
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v9       #fullBright:I
    :cond_16
    move v5, v3

    .line 981
    goto :goto_5

    :cond_17
    move v5, v4

    goto :goto_5

    .line 984
    :cond_18
    if-eqz v11, :cond_19

    .end local v9           #fullBright:I
    :goto_7
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v9       #fullBright:I
    :cond_19
    move v9, v10

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 17

    .prologue
    .line 670
    const/4 v6, 0x0

    .line 671
    .local v6, defaultButton:Landroid/view/View;
    const/4 v3, 0x1

    .line 672
    .local v3, BIT_BUTTON_POSITIVE:I
    const/4 v1, 0x2

    .line 673
    .local v1, BIT_BUTTON_NEGATIVE:I
    const/4 v2, 0x4

    .line 674
    .local v2, BIT_BUTTON_NEUTRAL:I
    const/4 v13, 0x0

    .line 675
    .local v13, whichButtons:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b2

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b3

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 682
    .local v9, padding1:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .end local v9           #padding1:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v14, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x33ffffff

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 696
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b6

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 697
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b7

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 703
    .local v10, padding2:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 715
    .end local v10           #padding2:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v14, :cond_1

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x106000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b4

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b5

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 728
    .local v11, padding3:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 743
    .end local v11           #padding3:Landroid/view/View;
    :goto_2
    if-ne v13, v3, :cond_9

    .line 744
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 752
    :cond_2
    :goto_3
    const/4 v5, 0x0

    .line 754
    .local v5, context:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 761
    :goto_4
    if-eqz v5, :cond_3

    .line 762
    const-string v14, "popup_bottom_left"

    const v15, 0x2080b13

    invoke-static {v5, v14, v15}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 763
    .local v8, left_bkg:I
    const-string v14, "popup_bottom_center"

    const v15, 0x2080b0f

    invoke-static {v5, v14, v15}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 764
    .local v4, center_bkg:I
    const-string v14, "popup_bottom_right"

    const v15, 0x2080b17

    invoke-static {v5, v14, v15}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 766
    .local v12, right_bkg:I
    if-ne v13, v3, :cond_b

    .line 767
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 801
    .end local v4           #center_bkg:I
    .end local v8           #left_bkg:I
    .end local v12           #right_bkg:I
    :cond_3
    :goto_5
    if-eqz v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    return v14

    .line 684
    .end local v5           #context:Landroid/content/Context;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 687
    or-int/2addr v13, v3

    goto/16 :goto_0

    .line 706
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 709
    if-nez v6, :cond_6

    .line 710
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 712
    :cond_6
    or-int/2addr v13, v1

    goto/16 :goto_1

    .line 730
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 733
    if-nez v6, :cond_8

    .line 734
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 736
    :cond_8
    or-int/2addr v13, v2

    goto/16 :goto_2

    .line 745
    :cond_9
    if-ne v13, v1, :cond_a

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 747
    :cond_a
    if-ne v13, v2, :cond_2

    .line 748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 755
    .restart local v5       #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 756
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 769
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #center_bkg:I
    .restart local v8       #left_bkg:I
    .restart local v12       #right_bkg:I
    :cond_b
    if-ne v13, v1, :cond_c

    .line 770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 772
    :cond_c
    if-ne v13, v2, :cond_d

    .line 773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 775
    :cond_d
    const/4 v14, 0x3

    if-ne v13, v14, :cond_e

    .line 776
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 780
    :cond_e
    const/4 v14, 0x5

    if-ne v13, v14, :cond_f

    .line 781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 785
    :cond_f
    const/4 v14, 0x6

    if-ne v13, v14, :cond_10

    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 790
    :cond_10
    const/4 v14, 0x7

    if-ne v13, v14, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 801
    .end local v4           #center_bkg:I
    .end local v8           #left_bkg:I
    .end local v12           #right_bkg:I
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x20200ac

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 639
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 640
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 643
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x20200ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 644
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 650
    iget v0, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 660
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 664
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v10, 0x20200a7

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 562
    const/4 v1, 0x1

    .line 564
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 566
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 573
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 635
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 577
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x20200a8

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 578
    if-eqz v0, :cond_6

    .line 581
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x20200a9

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 583
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget v4, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    if-lez v4, :cond_4

    .line 599
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 623
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_3
    move v0, v5

    .line 575
    goto :goto_1

    .line 604
    .restart local v0       #hasTextTitle:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 605
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 609
    :cond_5
    iget v4, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    if-nez v4, :cond_2

    .line 614
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 618
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 629
    :cond_6
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 630
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 22

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200ab

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 474
    .local v6, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/app/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/HtcAlertController;->setupButtons()Z

    move-result v8

    .line 477
    .local v8, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200a6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 483
    .local v5, topPanel:Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    .line 485
    .local v16, htcContext:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 490
    :goto_0
    const/4 v4, 0x0

    sget-object v19, Lcom/htc/R$styleable;->AlertDialog:[I

    const/high16 v20, 0x201

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 494
    .local v9, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/app/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v10

    .line 495
    .local v10, hasTitle:Z
    if-nez v10, :cond_0

    .line 496
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200b0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 499
    .local v11, buttonPanel:Landroid/view/View;
    if-nez v8, :cond_1

    .line 500
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_1
    const/4 v7, 0x0

    .line 504
    .local v7, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200ae

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #customPanel:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 506
    .restart local v7       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200af

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 507
    .local v12, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingBottom:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 512
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 522
    .end local v12           #custom:Landroid/widget/FrameLayout;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 523
    .local v14, dm:Landroid/util/DisplayMetrics;
    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v19, 0x1e0

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v19, 0x320

    move/from16 v0, v19

    if-eq v4, v0, :cond_5

    :cond_4
    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v19, 0x320

    move/from16 v0, v19

    if-ne v4, v0, :cond_6

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v19, 0x1e0

    move/from16 v0, v19

    if-ne v4, v0, :cond_6

    .line 526
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200af

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 527
    .restart local v12       #custom:Landroid/widget/FrameLayout;
    const v4, 0x102000d

    invoke-virtual {v12, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 529
    .local v18, prog:Landroid/view/View;
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    .line 531
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 532
    .local v17, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 533
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    if-eqz v12, :cond_6

    .line 535
    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 547
    .end local v12           #custom:Landroid/widget/FrameLayout;
    .end local v17           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18           #prog:Landroid/view/View;
    :cond_6
    :goto_2
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 548
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200aa

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 550
    .local v13, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/app/HtcAlertController;->mTitleDivider:Z

    if-eqz v4, :cond_b

    .line 551
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v13           #divider:Landroid/view/View;
    :cond_8
    :goto_3
    move-object/from16 v4, p0

    .line 557
    invoke-direct/range {v4 .. v11}, Lcom/htc/app/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 558
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 559
    return-void

    .line 486
    .end local v7           #customPanel:Landroid/widget/FrameLayout;
    .end local v9           #a:Landroid/content/res/TypedArray;
    .end local v10           #hasTitle:Z
    .end local v11           #buttonPanel:Landroid/view/View;
    .end local v14           #dm:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v15

    .line 487
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 516
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #customPanel:Landroid/widget/FrameLayout;
    .restart local v9       #a:Landroid/content/res/TypedArray;
    .restart local v10       #hasTitle:Z
    .restart local v11       #buttonPanel:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v19, 0x20200ae

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 538
    .restart local v12       #custom:Landroid/widget/FrameLayout;
    .restart local v14       #dm:Landroid/util/DisplayMetrics;
    .restart local v18       #prog:Landroid/view/View;
    :cond_a
    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 539
    if-eqz v12, :cond_6

    .line 540
    const/4 v4, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 553
    .end local v12           #custom:Landroid/widget/FrameLayout;
    .end local v18           #prog:Landroid/view/View;
    .restart local v13       #divider:Landroid/view/View;
    :cond_b
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 444
    packed-switch p1, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 448
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 8

    .prologue
    const/high16 v4, 0x2

    const/4 v7, -0x2

    .line 230
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 232
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v2}, Lcom/htc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x2090028

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 239
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x202001a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 241
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v3, "common_panel_navbar_hightlight"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/HtcAlertController;->setupView()V

    .line 244
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x20200a6

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 245
    .local v1, topPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 246
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v7}, Landroid/view/Window;->setLayout(II)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 329
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 333
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_0
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 337
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 353
    :goto_0
    return-void

    .line 341
    :pswitch_1
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 342
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 346
    :pswitch_2
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 347
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .parameter "whichButton"
    .parameter "disabled"

    .prologue
    .line 361
    packed-switch p1, :pswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 378
    :goto_0
    return-void

    .line 368
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 372
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 266
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 400
    iput p1, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    .line 401
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 402
    if-lez p1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-nez p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 418
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 431
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 273
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 284
    iput p2, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    .line 286
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 288
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    .line 391
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mTitleDivider:Z

    .line 387
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 299
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 308
    iput p2, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingLeft:I

    .line 309
    iput p3, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingTop:I

    .line 310
    iput p4, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingRight:I

    .line 311
    iput p5, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingBottom:I

    .line 312
    return-void
.end method

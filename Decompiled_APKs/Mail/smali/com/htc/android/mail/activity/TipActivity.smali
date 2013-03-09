.class public Lcom/htc/android/mail/activity/TipActivity;
.super Landroid/app/Activity;
.source "TipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_WIDGET_BOTTOM:Ljava/lang/String; = "Widget_Bottom"

.field public static final EXTRA_WIDGET_LEFT:Ljava/lang/String; = "Widget_Left"

.field public static final EXTRA_WIDGET_RIGHT:Ljava/lang/String; = "Widget_Right"

.field public static final EXTRA_WIDGET_TOP:Ljava/lang/String; = "Widget_Top"

.field private static mInitThread:Ljava/lang/Thread;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private initiator:Ljava/lang/Runnable;

.field mFooterText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mIvArrow:Landroid/widget/ImageView;

.field protected mIvBg:Landroid/widget/ImageView;

.field protected mTvMessage:Landroid/widget/TextView;

.field protected mViewActivity:Landroid/widget/RelativeLayout;

.field protected mViewBubble:Landroid/widget/RelativeLayout;

.field protected mbIgnoreAdjustMarginTop:Z

.field protected mnWidgetBottom:I

.field protected mnWidgetLeft:I

.field protected mnWidgetRight:I

.field protected mnWidgetTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "TipActivity"

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mTvMessage:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvBg:Landroid/widget/ImageView;

    .line 47
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewBubble:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewActivity:Landroid/widget/RelativeLayout;

    .line 50
    iput v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    .line 51
    iput v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    .line 52
    iput v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    .line 53
    iput v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    .line 55
    iput-boolean v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mbIgnoreAdjustMarginTop:Z

    .line 57
    iput-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mFooterText:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/htc/android/mail/activity/TipActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/activity/TipActivity$1;-><init>(Lcom/htc/android/mail/activity/TipActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->initiator:Ljava/lang/Runnable;

    return-void
.end method

.method private CalculateMargin()V
    .locals 19

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Widget_Left"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Widget_Top"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Widget_Right"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Widget_Bottom"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    .line 76
    const-string v13, "TipActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mnWidgetLeft>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v13, "TipActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mnWidgetTop>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v13, "TipActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mnWidgetRight>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v13, "TipActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mnWidgetBottom>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v13, "TipActivity"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "CalculateMargin L:%d, T:%d, R:%d, B:%d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v3, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .local v10, screenHeight:I
    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .local v11, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f0a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 88
    .local v12, taskBarHeight:I
    const-string v13, "TipActivity"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "CalculateMargin ScreenWidth:%d, ScreenHeight:%d, TaskBarHeight:%d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v7, paramsArrow:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mViewBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0012

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 98
    .local v8, row_1_left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0013

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 99
    .local v9, row_4_right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 101
    .local v5, line_3_top:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 102
    .local v1, arrow_topmargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 103
    .local v2, bubble_topmargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0011

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 104
    .local v4, fix_margin_bottom:I
    const-string v13, "TipActivity"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "CalculateMargin, r1l:%d, r4r:%d, l3t:%d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    if-ne v8, v13, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    const v14, 0x7f020001

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 111
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 112
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    if-ge v5, v13, :cond_0

    .line 114
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    sub-int v13, v10, v13

    sub-int/2addr v13, v4

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 121
    :goto_0
    const/4 v13, 0x4

    const v14, 0x7f0901a4

    invoke-virtual {v6, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    :goto_1
    return-void

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    add-int/2addr v13, v2

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetRight:I

    if-ne v9, v13, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    sub-int v13, v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a000b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    if-ge v5, v13, :cond_2

    .line 128
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    sub-int v13, v10, v13

    sub-int/2addr v13, v4

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 135
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    const v14, 0x7f020002

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 132
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    add-int/2addr v13, v2

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 140
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0008

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mbIgnoreAdjustMarginTop:Z

    .line 144
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    if-gt v5, v13, :cond_4

    .line 146
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    sub-int v13, v10, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0009

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    const/high16 v14, 0x7f02

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a000f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a000a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    const v14, 0x7f020003

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/activity/TipActivity;->mnWidgetBottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/activity/TipActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0007

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/mail/activity/TipActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->showCurrentStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/activity/TipActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    return-object p0
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f0901a1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvBg:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f0901a3

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mTvMessage:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewActivity:Landroid/widget/RelativeLayout;

    .line 211
    iget-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewActivity:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f0901a2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewBubble:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v0, p0, Lcom/htc/android/mail/activity/TipActivity;->mViewBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method private quit()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/htc/android/mail/activity/TipActivity;->finish()V

    .line 223
    return-void
.end method

.method private showCurrentStatus()Z
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->mTvMessage:Landroid/widget/TextView;

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    return v0
.end method


# virtual methods
.method public GetOrientation()I
    .locals 4

    .prologue
    .line 60
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/activity/TipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 62
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 63
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 64
    const/4 v2, 0x2

    .line 66
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->quit()V

    .line 219
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/android/mail/activity/TipActivity;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->quit()V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/activity/TipActivity;->setContentView(I)V

    .line 196
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->initUI()V

    .line 197
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->CalculateMargin()V

    .line 199
    sget-object v0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/android/mail/activity/TipActivity;->initiator:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    .line 201
    sget-object v0, Lcom/htc/android/mail/activity/TipActivity;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, bRet:Z
    sparse-switch p1, :sswitch_data_0

    .line 246
    :goto_0
    return v0

    .line 241
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->quit()V

    .line 242
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    invoke-direct {p0}, Lcom/htc/android/mail/activity/TipActivity;->quit()V

    .line 176
    return-void
.end method

.method setDescriptionColor()V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/htc/android/mail/activity/TipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 251
    .local v1, descriptionTextColor:I
    iget-object v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 254
    .local v0, blink:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v2, p0, Lcom/htc/android/mail/activity/TipActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    return-void
.end method

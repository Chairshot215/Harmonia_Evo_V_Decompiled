.class public Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "FriendStreamLinkMovementMethod.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FriendStreamLinkMovementMethod"

.field private static sBackgroundColor:I

.field private static sDownEvent:Landroid/view/MotionEvent;

.field private static sDownView:Landroid/widget/TextView;

.field private static sForegroundColor:I

.field private static sInstance:Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    sput-object v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 143
    sput-object v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 144
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sForegroundColor:I

    .line 145
    const v0, -0xff0100

    sput v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sBackgroundColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance(II)Landroid/text/method/MovementMethod;
    .locals 1
    .parameter "highlight_fg_color"
    .parameter "highlight_bg_color"

    .prologue
    .line 132
    sget-object v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sInstance:Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;

    invoke-direct {v0}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sInstance:Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;

    .line 135
    :cond_0
    sput p0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sForegroundColor:I

    .line 136
    sput p1, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sBackgroundColor:I

    .line 138
    sget-object v0, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sInstance:Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;

    return-object v0
.end method

.method private static removeHighlightSpans(Landroid/text/Spannable;)V
    .locals 8
    .parameter "buffer"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 122
    const/4 v5, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;

    .line 124
    .local v1, highlights:[Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    move-object v0, v1

    .local v0, arr$:[Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 125
    .local v2, hl:Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0           #arr$:[Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    .end local v1           #highlights:[Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    .end local v2           #hl:Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method private reset(Landroid/text/Spannable;)V
    .locals 3
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 109
    sget-object v1, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 111
    .local v0, downText:Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 112
    invoke-static {v0}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 113
    sput-object v2, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 115
    .end local v0           #downText:Landroid/text/Spannable;
    :cond_0
    sput-object v2, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 116
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 117
    invoke-static {p1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 26
    .local v2, action:I
    sget-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_0

    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 28
    const/4 v13, 0x0

    .line 105
    :goto_0
    return v13

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-nez v13, :cond_1

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 33
    const/4 v13, 0x0

    goto :goto_0

    .line 36
    :cond_1
    const/4 v13, 0x1

    if-eq v2, v13, :cond_2

    if-nez v2, :cond_9

    .line 38
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 39
    .local v11, x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 41
    .local v12, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int/2addr v11, v13

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 48
    .local v5, layout:Landroid/text/Layout;
    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 49
    .local v6, line:I
    int-to-float v13, v11

    invoke-virtual {v5, v6, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    .line 51
    .local v9, off:I
    const-class v13, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v9, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 54
    .local v7, link:[Landroid/text/style/ClickableSpan;
    if-nez v2, :cond_4

    .line 55
    array-length v13, v7

    if-lez v13, :cond_3

    .line 57
    sput-object p1, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 58
    invoke-static/range {p3 .. p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    sput-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 63
    new-instance v13, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;

    sget v14, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sBackgroundColor:I

    sget v15, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sForegroundColor:I

    invoke-direct {v13, v14, v15}, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;-><init>(II)V

    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, 0x0

    aget-object v15, v7, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    const/16 v16, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 67
    const/4 v13, 0x1

    goto :goto_0

    .line 69
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 70
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 73
    :cond_4
    sget-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v13, :cond_9

    .line 74
    sget-object v13, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_5

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 76
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 79
    :cond_5
    const/4 v13, 0x1

    if-ne v2, v13, :cond_8

    .line 81
    array-length v13, v7

    if-gtz v13, :cond_6

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 83
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    sget-object v14, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v3, v13, v14

    .line 87
    .local v3, dx:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sget-object v14, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float v4, v13, v14

    .line 88
    .local v4, dy:F
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v10

    .line 90
    .local v10, slop:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    const/4 v8, 0x1

    .line 93
    .local v8, notScrolling:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/htccontacts/text/method/FriendStreamLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 94
    if-eqz v8, :cond_8

    .line 95
    const/4 v13, 0x0

    aget-object v13, v7, v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 96
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 90
    .end local v8           #notScrolling:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 100
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v10           #slop:I
    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 105
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #link:[Landroid/text/style/ClickableSpan;
    .end local v9           #off:I
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

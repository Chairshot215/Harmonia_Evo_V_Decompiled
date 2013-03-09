.class Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EditStyledText.EditorManager"


# instance fields
.field private mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private mBackgroundColor:I

.field private mColorWaitInput:I

.field private mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

.field private mCopyBuffer:Landroid/text/SpannableStringBuilder;

.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mEditFlag:Z

.field private mKeepNonLineSpan:Z

.field private mMode:I

.field private mSizeWaitInput:I

.field private mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field private mTextIsFinishedFlag:Z

.field private mWaitInputFlag:Z

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 2
    .parameter
    .parameter "est"
    .parameter "dialog"

    .prologue
    const v1, 0xffffff

    const/4 v0, 0x0

    .line 963
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 945
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 946
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 947
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 948
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    .line 949
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 950
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 951
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 952
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 953
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 954
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 955
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 964
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 965
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, p1, v1, p0, p3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    .line 966
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    .line 967
    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEditMode(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cutToClipBoard()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectStartPos()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectEndPos()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->pasteFromClipboard()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->selectAll()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertHorizontalLine()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromResId(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->startEdit()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setInternalSelection(II)V

    return-void
.end method

.method private addMarquee(I)V
    .locals 3
    .parameter "marquee"

    .prologue
    .line 1723
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- addMarquee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    .line 1726
    return-void
.end method

.method private addSwing()V
    .locals 1

    .prologue
    .line 1718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1719
    return-void
.end method

.method private addTelop()V
    .locals 1

    .prologue
    .line 1714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1715
    return-void
.end method

.method private changeAlign(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 1710
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    .line 1711
    return-void
.end method

.method private changeColorSelectedText(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 1702
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_0

    .line 1703
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1707
    :goto_0
    return-void

    .line 1705
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeColor: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeSizeSelectedText(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1694
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_0

    .line 1695
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1699
    :goto_0
    return-void

    .line 1697
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeSize: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearStyles()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClearStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$600(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 1114
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshZeoWidthChar()V

    .line 1115
    return-void
.end method

.method private clearStyles(Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "txt"

    .prologue
    .line 1078
    const-string v9, "EditStyledText"

    const-string v10, "--- onClearStyles"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1081
    .local v4, len:I
    instance-of v9, p1, Landroid/text/Editable;

    if-eqz v9, :cond_4

    move-object v1, p1

    .line 1082
    check-cast v1, Landroid/text/Editable;

    .line 1083
    .local v1, editable:Landroid/text/Editable;
    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    invoke-interface {v1, v9, v4, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 1084
    .local v8, styles:[Ljava/lang/Object;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v7, v0, v3

    .line 1085
    .local v7, style:Ljava/lang/Object;
    instance-of v9, v7, Landroid/text/style/ParagraphStyle;

    if-nez v9, :cond_0

    instance-of v9, v7, Landroid/text/style/QuoteSpan;

    if-nez v9, :cond_0

    instance-of v9, v7, Landroid/text/style/CharacterStyle;

    if-eqz v9, :cond_3

    instance-of v9, v7, Landroid/text/style/UnderlineSpan;

    if-nez v9, :cond_3

    .line 1088
    :cond_0
    instance-of v9, v7, Landroid/text/style/ImageSpan;

    if-nez v9, :cond_1

    instance-of v9, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v9, :cond_2

    .line 1089
    :cond_1
    invoke-interface {v1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1090
    .local v6, start:I
    invoke-interface {v1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1091
    .local v2, end:I
    const-string v9, ""

    invoke-interface {v1, v6, v2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1093
    .end local v2           #end:I
    .end local v6           #start:I
    :cond_2
    invoke-interface {v1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1084
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #editable:Landroid/text/Editable;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #style:Ljava/lang/Object;
    .end local v8           #styles:[Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private copyToClipBoard()V
    .locals 6

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1475
    .local v3, min:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1476
    .local v2, max:I
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iput-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    .line 1477
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1478
    .local v1, clipboardtxt:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1481
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    invoke-direct {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    .line 1486
    return-void
.end method

.method private cutToClipBoard()V
    .locals 4

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    .line 1490
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1491
    .local v1, min:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1492
    .local v0, max:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1493
    return-void
.end method

.method private dumpSpannableString(Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "txt"

    .prologue
    .line 1773
    instance-of v7, p1, Landroid/text/Spannable;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 1774
    check-cast v4, Landroid/text/Spannable;

    .line 1775
    .local v4, spannable:Landroid/text/Spannable;
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 1777
    .local v2, len:I
    const-string v7, "EditStyledText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- dumpSpannableString, txt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    invoke-interface {v4, v7, v2, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 1780
    .local v6, styles:[Ljava/lang/Object;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 1782
    .local v5, style:Ljava/lang/Object;
    const-string v7, "EditStyledText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- dumpSpannableString, class:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1790
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len:I
    .end local v3           #len$:I
    .end local v4           #spannable:Landroid/text/Spannable;
    .end local v5           #style:Ljava/lang/Object;
    .end local v6           #styles:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private endEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1418
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1421
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1422
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 1423
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1424
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 1425
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1426
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1427
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 1428
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    .line 1429
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    .line 1430
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unblockSoftKey()V

    .line 1432
    return-void
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .locals 4
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1758
    move v0, p2

    .line 1759
    .local v0, pos:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1760
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    .line 1766
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v0

    .line 1759
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .locals 4
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1744
    move v0, p2

    .line 1745
    .local v0, pos:I
    :goto_0
    if-lez v0, :cond_0

    .line 1746
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1751
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v0

    .line 1745
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fixSelectionAndDoNextAction()V
    .locals 3

    .prologue
    .line 1436
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_1

    .line 1443
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- cancel handle complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0

    .line 1448
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1449
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    .line 1454
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method private handleSelectAll()V
    .locals 2

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    goto :goto_0
.end method

.method private insertHorizontalLine()V
    .locals 6

    .prologue
    .line 1062
    const-string v2, "EditStyledText.EditorManager"

    const-string v3, "--- onInsertHorizontalLine:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1065
    .local v0, curpos:I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #curpos:I
    .local v1, curpos:I
    const-string v3, "\n"

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v1

    .line 1068
    .end local v1           #curpos:I
    .restart local v0       #curpos:I
    :cond_0
    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v3, -0x100

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/lit8 v1, v0, 0x1

    .end local v0           #curpos:I
    .restart local v1       #curpos:I
    invoke-direct {p0, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1071
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #curpos:I
    .restart local v0       #curpos:I
    const-string v3, "\n"

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1072
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    .line 1073
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1074
    return-void
.end method

.method private insertImageFromResId(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 1056
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthDip()I
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$500(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1058
    return-void
.end method

.method private insertImageFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1051
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1053
    return-void
.end method

.method private insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V
    .locals 3
    .parameter "span"
    .parameter "curpos"

    .prologue
    .line 1730
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\ufffc"

    invoke-interface {v0, p2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1734
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x21

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1736
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1741
    :goto_0
    return-void

    .line 1738
    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x5

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->sendHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_0
.end method

.method private isClipBoardChanged(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "clipboardText"

    .prologue
    const/4 v3, 0x1

    .line 1497
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- isClipBoardChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return v3

    .line 1502
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1503
    .local v1, len:I
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1505
    .local v2, removedClipBoard:Ljava/lang/CharSequence;
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- clipBoard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 1510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1511
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1515
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTextSelected()Z
    .locals 2

    .prologue
    .line 1665
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWaitingNextAction()Z
    .locals 3

    .prologue
    .line 1629
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- waitingNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1632
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->waitSelection()V

    .line 1633
    const/4 v0, 0x1

    .line 1636
    :goto_0
    return v0

    .line 1635
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resumeSelection()V

    .line 1636
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pasteFromClipboard()V
    .locals 13

    .prologue
    .line 1519
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v9

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1520
    .local v5, min:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v9

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1522
    .local v4, max:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1523
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 1526
    .local v1, clip:Landroid/text/ClipboardManager;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 1527
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v9, v5, v4, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1528
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isClipBoardChanged(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1530
    const-string v9, "EditStyledText"

    const-string v10, "--- handlePaste: startPasteImage"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/DynamicDrawableSpan;

    .line 1535
    .local v8, styles:[Landroid/text/style/DynamicDrawableSpan;
    move-object v0, v8

    .local v0, arr$:[Landroid/text/style/DynamicDrawableSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 1536
    .local v7, style:Landroid/text/style/DynamicDrawableSpan;
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1537
    .local v6, start:I
    instance-of v9, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v9, :cond_1

    .line 1538
    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v10, -0x100

    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v12}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int v10, v5, v6

    invoke-direct {p0, v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1535
    .end local v7           #style:Landroid/text/style/DynamicDrawableSpan;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1540
    .restart local v7       #style:Landroid/text/style/DynamicDrawableSpan;
    :cond_1
    instance-of v9, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v9, :cond_0

    .line 1541
    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    .end local v7           #style:Landroid/text/style/DynamicDrawableSpan;
    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->getContentUri()Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I
    invoke-static {v12}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    add-int v10, v5, v6

    invoke-direct {p0, v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    goto :goto_1

    .line 1548
    .end local v0           #arr$:[Landroid/text/style/DynamicDrawableSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #start:I
    .end local v8           #styles:[Landroid/text/style/DynamicDrawableSpan;
    :cond_2
    return-void
.end method

.method private removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 11
    .parameter "text"

    .prologue
    .line 1459
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1460
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const-class v10, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v1, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/DynamicDrawableSpan;

    .line 1462
    .local v7, styles:[Landroid/text/style/DynamicDrawableSpan;
    move-object v0, v7

    .local v0, arr$:[Landroid/text/style/DynamicDrawableSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 1463
    .local v6, style:Landroid/text/style/DynamicDrawableSpan;
    instance-of v8, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-nez v8, :cond_0

    instance-of v8, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v8, :cond_1

    .line 1465
    :cond_0
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1466
    .local v5, start:I
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1467
    .local v2, end:I
    const-string v8, ""

    invoke-virtual {v1, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1462
    .end local v2           #end:I
    .end local v5           #start:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1470
    .end local v6           #style:Landroid/text/style/DynamicDrawableSpan;
    :cond_2
    return-object v1
.end method

.method private resetEdit()V
    .locals 3

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    .line 1567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 1568
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1569
    return-void
.end method

.method private resumeSelection()V
    .locals 2

    .prologue
    .line 1656
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- resumeSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1661
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1662
    return-void
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 1559
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1560
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1561
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1562
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1563
    return-void
.end method

.method private setEditMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1246
    return-void
.end method

.method private setInternalSelection(II)V
    .locals 0
    .parameter "curStart"
    .parameter "curEnd"

    .prologue
    .line 1316
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1317
    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1318
    return-void
.end method

.method private setLineStyledTextSpan(Ljava/lang/Object;)V
    .locals 7
    .parameter "span"

    .prologue
    .line 1679
    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1680
    .local v3, min:I
    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1681
    .local v2, max:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1682
    .local v0, current:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v4

    .line 1683
    .local v4, start:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v1

    .line 1684
    .local v1, end:I
    if-ne v4, v1, :cond_0

    .line 1685
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    const-string v6, "\n"

    invoke-interface {v5, v1, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1686
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1690
    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1691
    return-void

    .line 1688
    :cond_0
    invoke-direct {p0, p1, v4, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private setSelectEndPos()V
    .locals 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    goto :goto_0
.end method

.method private setSelectStartPos()V
    .locals 2

    .prologue
    .line 1605
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setSelectStartPos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1608
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1609
    return-void
.end method

.method private setSelectState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1249
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1250
    return-void
.end method

.method private setSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1573
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onSelect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1577
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ge v0, v1, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1579
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1590
    :goto_0
    return-void

    .line 1580
    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-le v0, v1, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1582
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    .line 1584
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    .line 1587
    :cond_2
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStyledTextSpan(Ljava/lang/Object;II)V
    .locals 5
    .parameter "span"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1670
    const-string v2, "EditStyledText.EditorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- setStyledTextSpan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1673
    .local v1, min:I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1674
    .local v0, max:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v2, p1, v1, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1675
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1676
    return-void
.end method

.method private startEdit()V
    .locals 0

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 986
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey()V

    .line 987
    return-void
.end method

.method private unsetSelect()V
    .locals 3

    .prologue
    .line 1594
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- offSelect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1598
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1599
    .local v0, currpos:I
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1600
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1601
    return-void
.end method

.method private waitSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1642
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- waitSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1645
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_0

    .line 1646
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1651
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$800(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1652
    return-void

    .line 1648
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;)V
    .locals 1
    .parameter "mode"
    .parameter "action"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->addAction(ILcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;)V

    .line 971
    return-void
.end method

.method public blockSoftKey()V
    .locals 2

    .prologue
    .line 1830
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hideSoftKey()V

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1834
    return-void
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return v0
.end method

.method public getColorWaitInput()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 1300
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    return v0
.end method

.method public getSizeWaitInput()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    return v0
.end method

.method public hideSoftKey()V
    .locals 4

    .prologue
    .line 1815
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- hidesoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1820
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1821
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1822
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1825
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public isEditting()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1268
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1269
    .local v1, txt:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1270
    .local v0, len:I
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    array-length v2, v2

    if-gtz v2, :cond_0

    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    array-length v2, v2

    if-gtz v2, :cond_0

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    array-length v2, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    const v4, 0xffffff

    if-eq v2, v4, :cond_1

    .line 1274
    :cond_0
    const/4 v2, 0x1

    .line 1276
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public isWaitInput()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    return v0
.end method

.method public onAction(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(IZ)V

    .line 975
    return-void
.end method

.method public onAction(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "notifyStateChanged"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 979
    if-eqz p2, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 982
    :cond_0
    return-void
.end method

.method public onCancelViewManagers()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 1105
    return-void
.end method

.method public onClearStyles()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 1101
    return-void
.end method

.method public onCursorMoved()V
    .locals 3

    .prologue
    .line 1007
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 1011
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1013
    :cond_1
    return-void
.end method

.method public onFixSelectedItem()V
    .locals 3

    .prologue
    .line 1034
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    .line 1037
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1038
    return-void
.end method

.method public onInsertImage(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(ILjava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1048
    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(ILjava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1043
    return-void
.end method

.method public onRefreshStyles()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1129
    const-string v10, "EditStyledText.EditorManager"

    const-string v11, "--- onRefreshStyles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1132
    .local v8, txt:Landroid/text/Editable;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1133
    .local v2, len:I
    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v9

    .line 1134
    .local v9, width:I
    const-class v10, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v8, v13, v2, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    .line 1135
    .local v5, lines:[Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    move-object v0, v5

    .local v0, arr$:[Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1136
    .local v4, line:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    invoke-virtual {v4, v9}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->resetWidth(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    .end local v4           #line:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    :cond_0
    const-class v10, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    invoke-interface {v8, v13, v2, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    .line 1139
    .local v7, marquees:[Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
    move-object v0, v7

    .local v0, arr$:[Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    .line 1140
    .local v6, marquee:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v10}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->resetColor(I)V

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1143
    .end local v6           #marquee:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
    :cond_1
    array-length v10, v5

    if-lez v10, :cond_2

    .line 1146
    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v13, v10, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :cond_2
    return-void
.end method

.method public onRefreshZeoWidthChar()V
    .locals 4

    .prologue
    .line 1118
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1119
    .local v1, txt:Landroid/text/Editable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1120
    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2060

    if-ne v2, v3, :cond_0

    .line 1121
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1122
    add-int/lit8 v0, v0, -0x1

    .line 1119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_1
    return-void
.end method

.method public onStartSelect(Z)V
    .locals 3
    .parameter "notifyStateChanged"

    .prologue
    .line 991
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 994
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 1000
    :goto_0
    if-eqz p1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1003
    :cond_0
    return-void

    .line 997
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    .line 998
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    goto :goto_0
.end method

.method public onStartSelectAll(Z)V
    .locals 3
    .parameter "notifyStateChanged"

    .prologue
    .line 1017
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->handleSelectAll()V

    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1023
    :cond_0
    return-void
.end method

.method public onStartShowMenuAlertDialog()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 1030
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 2
    .parameter "align"

    .prologue
    .line 1187
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1188
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeAlign(Landroid/text/Layout$Alignment;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1191
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1151
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 1152
    return-void
.end method

.method public setEndPos(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1621
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setSelectedEndPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1624
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelection()V

    .line 1625
    return-void
.end method

.method public setItemColor(IZ)V
    .locals 2
    .parameter "color"
    .parameter "reset"

    .prologue
    .line 1172
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1177
    :cond_2
    const v0, 0xffffff

    if-eq p1, v0, :cond_3

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeColorSelectedText(I)V

    .line 1180
    :cond_3
    if-eqz p2, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0
.end method

.method public setItemSize(IZ)V
    .locals 2
    .parameter "size"
    .parameter "reset"

    .prologue
    .line 1156
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1161
    :cond_2
    if-lez p1, :cond_3

    .line 1162
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeSizeSelectedText(I)V

    .line 1164
    :cond_3
    if-eqz p2, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0
.end method

.method public setMarquee(I)V
    .locals 2
    .parameter "marquee"

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1209
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1210
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1212
    :cond_1
    return-void
.end method

.method public setSwing()V
    .locals 2

    .prologue
    .line 1201
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1202
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addSwing()V

    .line 1203
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1205
    :cond_1
    return-void
.end method

.method public setTelop()V
    .locals 2

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1195
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addTelop()V

    .line 1196
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1198
    :cond_1
    return-void
.end method

.method public setTextComposingMask(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1216
    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- setTextComposingMask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1219
    .local v4, min:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1221
    .local v3, max:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    const v6, 0xffffff

    if-eq v5, v6, :cond_3

    .line 1222
    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1226
    .local v1, foregroundColor:I
    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v0

    .line 1228
    .local v0, backgroundColor:I
    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- fg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-ne v1, v0, :cond_2

    .line 1234
    const/high16 v5, -0x8000

    const/high16 v6, -0x100

    or-int/2addr v6, v0

    xor-int/lit8 v6, v6, -0x1

    or-int v2, v5, v6

    .line 1235
    .local v2, maskColor:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 1237
    :cond_0
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    .line 1239
    :cond_1
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    const/16 v7, 0x21

    invoke-interface {v5, v6, v4, v3, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1242
    .end local v2           #maskColor:I
    :cond_2
    return-void

    .line 1224
    .end local v0           #backgroundColor:I
    .end local v1           #foregroundColor:I
    :cond_3
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getForegroundColor(I)I

    move-result v1

    .restart local v1       #foregroundColor:I
    goto/16 :goto_0
.end method

.method public showSoftKey()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    .line 1794
    return-void
.end method

.method public showSoftKey(II)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"

    .prologue
    .line 1798
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- showsoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1804
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1805
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v1, :cond_0

    .line 1809
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public unblockSoftKey()V
    .locals 2

    .prologue
    .line 1838
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1841
    return-void
.end method

.method public unsetTextComposingMask()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    .line 1260
    :cond_0
    return-void
.end method

.method public updateSpanNextToCursor(Landroid/text/Editable;III)V
    .locals 16
    .parameter "txt"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1376
    const-string v13, "EditStyledText.EditorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpanNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    add-int v3, p2, p4

    .line 1379
    .local v3, end:I
    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1380
    .local v7, min:I
    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1381
    .local v6, max:I
    const-class v13, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v6, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .line 1382
    .local v10, spansAfter:[Ljava/lang/Object;
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/Object;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v8, v2, v4

    .line 1383
    .local v8, span:Ljava/lang/Object;
    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v13, :cond_0

    instance-of v13, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_5

    .line 1384
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1385
    .local v11, spanstart:I
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 1387
    .local v9, spanend:I
    const-string v13, "EditStyledText.EditorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "spantype:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    move v12, v7

    .line 1390
    .local v12, tempmin:I
    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v13, :cond_1

    instance-of v13, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_2

    .line 1391
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v12

    .line 1393
    :cond_2
    if-ge v12, v11, :cond_4

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    .line 1394
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1382
    .end local v9           #spanend:I
    .end local v11           #spanstart:I
    .end local v12           #tempmin:I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1395
    .restart local v9       #spanend:I
    .restart local v11       #spanstart:I
    .restart local v12       #tempmin:I
    :cond_4
    if-le v11, v7, :cond_3

    .line 1396
    const/16 v13, 0x21

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v7, v9, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1398
    .end local v9           #spanend:I
    .end local v11           #spanstart:I
    .end local v12           #tempmin:I
    :cond_5
    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v13, :cond_3

    .line 1399
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1402
    .restart local v11       #spanstart:I
    if-ne v11, v3, :cond_3

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    add-int/lit8 v14, v3, -0x1

    invoke-interface {v13, v14}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_3

    .line 1403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    const-string v14, "\n"

    invoke-interface {v13, v3, v14}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_1

    .line 1408
    .end local v8           #span:Ljava/lang/Object;
    .end local v11           #spanstart:I
    :cond_6
    return-void
.end method

.method public updateSpanPreviousFromCursor(Landroid/text/Editable;III)V
    .locals 16
    .parameter "txt"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1323
    const-string v13, "EditStyledText.EditorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpanPrevious:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    add-int v3, p2, p4

    .line 1326
    .local v3, end:I
    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1327
    .local v7, min:I
    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1328
    .local v6, max:I
    const-class v13, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v7, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .line 1329
    .local v10, spansBefore:[Ljava/lang/Object;
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/Object;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v8, v2, v4

    .line 1330
    .local v8, span:Ljava/lang/Object;
    instance-of v13, v8, Landroid/text/style/ForegroundColorSpan;

    if-nez v13, :cond_0

    instance-of v13, v8, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v13, :cond_0

    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v13, :cond_0

    instance-of v13, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_5

    .line 1332
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1333
    .local v11, spanstart:I
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 1335
    .local v9, spanend:I
    const-string v13, "EditStyledText.EditorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "spantype:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move v12, v6

    .line 1338
    .local v12, tempmax:I
    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v13, :cond_1

    instance-of v13, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_4

    .line 1340
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v12

    .line 1346
    :cond_2
    :goto_1
    if-ge v9, v12, :cond_3

    .line 1348
    const-string v13, "EditStyledText.EditorManager"

    const-string v14, "updateSpanPrevious: extend span"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v13, 0x21

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v11, v12, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    .end local v9           #spanend:I
    .end local v11           #spanstart:I
    .end local v12           #tempmax:I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1342
    .restart local v9       #spanend:I
    .restart local v11       #spanstart:I
    .restart local v12       #tempmax:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    if-eqz v13, :cond_2

    .line 1343
    move v12, v9

    goto :goto_1

    .line 1353
    .end local v9           #spanend:I
    .end local v11           #spanstart:I
    .end local v12           #tempmax:I
    :cond_5
    instance-of v13, v8, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v13, :cond_3

    .line 1354
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1355
    .restart local v11       #spanstart:I
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 1356
    .restart local v9       #spanend:I
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_6

    .line 1360
    const-string v13, ""

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v9, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1361
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 1365
    :cond_6
    if-ne v9, v3, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v13

    if-ge v3, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_3

    .line 1367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v13}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v13

    const-string v14, "\n"

    invoke-interface {v13, v3, v14}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 1372
    .end local v8           #span:Ljava/lang/Object;
    .end local v9           #spanend:I
    .end local v11           #spanstart:I
    :cond_7
    return-void
.end method

.class public Lcom/htc/android/htcime/ui/FloatWCL;
.super Lcom/htc/android/htcime/ezsip/common/CompressedTextView;
.source "FloatWCL.java"


# static fields
.field private static final NON_PRESSED_BACKGROUND_COLOR:I = 0x0

.field private static final NON_SELECTED_TEXT_COLOR:I = -0x1000000

.field public static final NULL_INDEX:I = -0x2

.field private static final PRESSED:Z = true

.field private static final PRESSED_BACKGROUND_COLOR:I = -0x1f005000

.field private static final SELECTED_TEXT_COLOR:I = -0x1

.field private static final UNPRESSED:Z


# instance fields
.field private mCandidates:[Ljava/lang/String;

.field private mCandsIndex:I

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mPressState:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/FloatWCL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mCandsIndex:I

    .line 58
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mPressState:Z

    .line 69
    iput v1, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mWidth:I

    .line 75
    iput-object v3, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 76
    iput-object v3, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 77
    iput-object v3, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 86
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FloatWCL;->setClickable(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FloatWCL;->setMaxLines(I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FloatWCL;->setHorizontallyScrolling(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/FloatWCL;->setFocusableInTouchMode(Z)V

    .line 90
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setTextColor(I)V

    .line 91
    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setBackgroundResource(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 131
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 1
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 103
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 104
    iput-object p2, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 105
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/common/CompressedTextView;->refreshDrawableState()V

    .line 157
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FloatWCL;->isPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mPressState:Z

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FloatWCL;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mPressState:Z

    .line 160
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mPressState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FloatWCL;->setPressed()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mPressState:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FloatWCL;->setUnpressed()V

    goto :goto_0
.end method

.method public sendCandsStringToWCL(Ljava/lang/String;I)Z
    .locals 3
    .parameter "str"
    .parameter "defaultIndex"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FloatWCL;->clear()V

    .line 113
    const-string v2, "\\|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 115
    .local v0, pattern:Ljava/util/regex/Pattern;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mCandidates:[Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mCandidates:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mCandidates:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FloatWCL;->underLineEffect(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FloatWCL;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iput v1, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mCandsIndex:I

    .line 124
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPressed()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f02002a

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setBackgroundResource(I)V

    .line 149
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setTextColor(I)V

    .line 151
    return-void
.end method

.method public setUnpressed()V
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setBackgroundResource(I)V

    .line 139
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FloatWCL;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FloatWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x70b

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 142
    return-void
.end method

.method underLineEffect(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "src_str"

    .prologue
    const/4 v4, -0x1

    .line 171
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 172
    .local v1, autoCmp_Start:I
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 173
    .local v0, autoCmp_End:I
    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    if-ge v1, v0, :cond_0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 176
    .local v2, span_str:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    .end local v2           #span_str:Landroid/text/SpannableString;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.class public Lcom/android/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
    }
.end annotation


# static fields
.field private static DISMISS:I

.field private static sSelectedTextColor:I


# instance fields
.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mLineSpacingExtra:F

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChips:Z

.field private final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/RecipientChip;

.field private mShouldShrink:Z

.field private mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    .line 119
    const/4 v0, -0x1

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 124
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 156
    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 158
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 195
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$2;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$3;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 231
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 232
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 233
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 234
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$4;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 247
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 248
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 250
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$5;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 261
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 263
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1199
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1206
    :goto_0
    return v0

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v2, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1203
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1206
    goto :goto_0
.end method

.method private calculateAvailableWidth(Z)F
    .locals 2
    .parameter "pressed"

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 618
    .local v0, actualLine:I
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private checkChipWidths()V
    .locals 8

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 738
    .local v3, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_1

    .line 740
    move-object v0, v3

    .local v0, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 741
    .local v2, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 742
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 744
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 740
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 748
    .end local v0           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSelectedChip()V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1309
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1310
    return-void
.end method

.method private commitByCharacter()V
    .locals 4

    .prologue
    .line 1108
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1112
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1113
    .local v1, end:I
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1114
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1115
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    move v0, v1

    .line 1158
    :goto_0
    return v0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1130
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_2

    .line 1131
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p3, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1132
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    .line 1133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1136
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1138
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1139
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_3

    .line 1141
    const-string v3, ""

    invoke-static {p3, p1, p2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1142
    invoke-direct {p0, v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_3

    if-le p1, v5, :cond_3

    if-le p2, v5, :cond_3

    .line 1144
    invoke-interface {p3, p1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1151
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 1152
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1154
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    move v0, v1

    .line 1155
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1158
    goto :goto_0
.end method

.method private commitDefault()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1086
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v5, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v4

    .line 1089
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1090
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1091
    .local v1, end:I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1093
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1094
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1097
    .local v3, whatEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1098
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    .line 1099
    const/4 v4, 0x1

    goto :goto_0

    .line 1101
    :cond_2
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v4

    goto :goto_0
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    .locals 10
    .parameter "contact"
    .parameter "offset"
    .parameter "pressed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 581
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 582
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 587
    .local v2, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 588
    .local v3, paint:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 589
    .local v1, defaultSize:F
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 592
    .local v0, defaultColor:I
    if-eqz p3, :cond_1

    .line 593
    invoke-direct {p0, p1, v3, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 600
    .local v6, tmpBitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 601
    .local v5, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 602
    new-instance v4, Lcom/android/ex/chips/RecipientChip;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/ex/chips/RecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V

    .line 604
    .local v4, recipientChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 605
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 606
    return-object v4

    .line 596
    .end local v4           #recipientChip:Lcom/android/ex/chips/RecipientChip;
    .end local v5           #result:Landroid/graphics/drawable/Drawable;
    .end local v6           #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #tmpBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .locals 9
    .parameter "chip"

    .prologue
    .line 1402
    new-instance v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getDataId()J

    move-result-wide v4

    iget v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v7}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJIILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    return-object v0
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 10
    .parameter "entry"
    .parameter "pressed"

    .prologue
    const/4 v7, 0x0

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1527
    .local v2, displayText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v7

    .line 1547
    :cond_0
    :goto_0
    return-object v1

    .line 1530
    :cond_1
    const/4 v1, 0x0

    .line 1532
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 1533
    .local v4, end:I
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1534
    .local v5, start:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1535
    .local v6, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1           #chipText:Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1536
    .restart local v1       #chipText:Landroid/text/SpannableString;
    iget-boolean v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v8, :cond_0

    .line 1538
    :try_start_0
    invoke-direct {p0, p1, v5, p2}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 1539
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    const/4 v8, 0x0

    const/16 v9, 0x21

    invoke-virtual {v1, v0, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1541
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1542
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    :catch_0
    move-exception v3

    .line 1543
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    .line 1544
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    .locals 13
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 1679
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, moreText:Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1681
    .local v6, morePaint:Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1682
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1683
    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v12, v3, v4

    .line 1685
    .local v12, width:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineHeight()I

    move-result v9

    .line 1686
    .local v9, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1687
    .local v8, drawable:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1688
    .local v0, canvas:Landroid/graphics/Canvas;
    move v7, v9

    .line 1689
    .local v7, adjustedHeight:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 1690
    .local v10, layout:Landroid/text/Layout;
    if-eqz v10, :cond_0

    .line 1691
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 1693
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1695
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1696
    .local v11, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v2, v2, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1697
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v11}, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createReplacementChip(IILandroid/text/Editable;)V
    .locals 12
    .parameter "tokenStart"
    .parameter "tokenEnd"
    .parameter "editable"

    .prologue
    const/4 v7, 0x0

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 860
    .local v9, token:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 861
    .local v2, commitCharIndex:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_2

    .line 862
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 864
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    .line 865
    .local v6, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v6, :cond_0

    .line 866
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, destText:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 869
    .local v8, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 870
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 871
    .local v5, end:I
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 872
    .local v7, start:I
    :cond_3
    const/4 v0, 0x0

    .line 874
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    :try_start_0
    iget-boolean v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v10, :cond_4

    .line 875
    const/4 v10, 0x0

    invoke-direct {p0, v6, v7, v10}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 876
    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v0, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_4
    :goto_1
    invoke-interface {p3, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 883
    if-eqz v0, :cond_0

    .line 884
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v10, :cond_5

    .line 885
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 887
    :cond_5
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 888
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 878
    :catch_0
    move-exception v4

    .line 879
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v10, "RecipientEditTextView"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 455
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v9, v2

    .line 456
    .local v9, height:I
    move v8, v9

    .line 457
    .local v8, deleteWidth:I
    const/4 v2, 0x1

    new-array v12, v2, [F

    .line 458
    .local v12, widths:[F
    const-string v2, " "

    invoke-virtual {p2, v2, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v3

    int-to-float v4, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, p2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 464
    .local v1, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v2, v8, 0x2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 469
    .local v11, width:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 470
    .local v10, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 471
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    sget v2, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 476
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v9}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 479
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 480
    .local v7, backgroundPadding:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 481
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v8

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v11, v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v9, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    .end local v7           #backgroundPadding:Landroid/graphics/Rect;
    :goto_0
    return-object v10

    .line 487
    :cond_0
    const-string v2, "RecipientEditTextView"

    const-string v3, "Unable to draw a background for the chips as it was never set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .locals 4
    .parameter "currentChip"

    .prologue
    .line 1407
    new-instance v0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 8
    .parameter "token"

    .prologue
    const/4 v7, 0x0

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    const/4 v6, 0x0

    .line 977
    :goto_0
    return-object v6

    .line 909
    :cond_0
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 910
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .line 911
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 914
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 916
    .local v0, charAt:C
    const/16 v6, 0x2c

    if-eq v0, v6, :cond_1

    const/16 v6, 0x3b

    if-ne v0, v6, :cond_2

    .line 917
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 922
    :cond_2
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    array-length v6, v4

    if-lez v6, :cond_5

    .line 923
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_5

    .line 926
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 928
    invoke-static {v1, v1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto :goto_0

    .line 930
    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 932
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto :goto_0

    .line 923
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 939
    .end local v2           #i:I
    :cond_5
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto :goto_0

    .line 941
    .end local v0           #charAt:C
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    array-length v6, v4

    if-lez v6, :cond_8

    .line 944
    aget-object v6, v4, v7

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 946
    invoke-static {v1, p1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 948
    :cond_7
    aget-object v6, v4, v7

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 950
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 956
    :cond_8
    const/4 v5, 0x0

    .line 957
    .local v5, validatedToken:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v6, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 959
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v6, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 960
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 961
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 964
    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 965
    .local v3, tokenized:[Landroid/text/util/Rfc822Token;
    array-length v6, v3

    if-lez v6, :cond_9

    .line 966
    aget-object v6, v3, v7

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 977
    .end local v3           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_9
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .end local v5           #validatedToken:Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 972
    .restart local v5       #validatedToken:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    move-object v5, p1

    .line 977
    goto :goto_3
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v12, v4

    .line 498
    .local v12, height:I
    move v13, v12

    .line 499
    .local v13, iconWidth:I
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 500
    .local v20, widths:[F
    const-string v4, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 501
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v5

    int-to-float v6, v13

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v20, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v5}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 505
    .local v3, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v4, v13, 0x2

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 510
    .local v19, width:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 511
    .local v18, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 512
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 513
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_4

    .line 514
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v4, v5, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 522
    .local v16, photoBytes:[B
    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 530
    :cond_0
    if-eqz v16, :cond_2

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 537
    .local v15, photo:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v15, :cond_1

    .line 538
    new-instance v17, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 539
    .local v17, src:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 540
    .local v10, backgroundPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 541
    new-instance v11, Landroid/graphics/RectF;

    sub-int v4, v19, v13

    iget v5, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v19, v6

    int-to-float v6, v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v12, v7

    int-to-float v7, v7

    invoke-direct {v11, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 545
    .local v11, dst:Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 546
    .local v14, matrix:Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 547
    move-object/from16 v0, p2

    invoke-virtual {v2, v15, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 553
    .end local v10           #backgroundPadding:Landroid/graphics/Rect;
    .end local v11           #dst:Landroid/graphics/RectF;
    .end local v14           #matrix:Landroid/graphics/Matrix;
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    .end local v17           #src:Landroid/graphics/RectF;
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 555
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v6, v6

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1, v12}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v7

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 560
    :goto_2
    return-object v18

    .line 534
    .restart local v16       #photoBytes:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .restart local v15       #photo:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 551
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 558
    :cond_4
    const-string v4, "RecipientEditTextView"

    const-string v5, "Unable to draw a background for the chips as it was never set"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 4
    .parameter "item"

    .prologue
    .line 1580
    if-nez p1, :cond_0

    .line 1581
    const/4 v1, 0x0

    .line 1596
    :goto_0
    return-object v1

    .line 1587
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, destination:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1592
    :cond_1
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 1594
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_2
    move-object v1, p1

    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "maxWidth"

    .prologue
    .line 443
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 444
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->removeMoreChip()V

    .line 431
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 433
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 436
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 437
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v1, p0, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 440
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 433
    goto :goto_0
.end method

.method private findChip(I)Lcom/android/ex/chips/RecipientChip;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1458
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1460
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1461
    aget-object v2, v0, v1

    .line 1462
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1463
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 1464
    if-lt p1, v3, :cond_0

    if-gt p1, v4, :cond_0

    move-object v0, v2

    .line 1468
    :goto_1
    return-object v0

    .line 1460
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1468
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findText(Landroid/text/Editable;I)I
    .locals 2
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 1451
    invoke-interface {p1, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1454
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const/4 p2, -0x1

    goto :goto_0
.end method

.method private focusNext()Z
    .locals 2

    .prologue
    .line 1069
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1070
    .local v0, next:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1072
    const/4 v1, 0x1

    .line 1074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChipEnd(Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .locals 4
    .parameter "text"
    .parameter "paint"
    .parameter "height"

    .prologue
    .line 573
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 574
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 575
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 576
    .local v1, textHeight:I
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    invoke-virtual {p2}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method private handleEdit(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1210
    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1230
    :goto_0
    return-void

    .line 1217
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1218
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1221
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 1222
    const-string v2, ""

    invoke-static {v0, p1, p2, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1223
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1224
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1225
    if-eqz v1, :cond_2

    if-le p1, v3, :cond_2

    if-le v2, v3, :cond_2

    .line 1226
    invoke-interface {v0, p1, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1229
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 2222
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2224
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    .line 2225
    .local v1, replace:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2227
    .end local v1           #replace:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 5
    .parameter

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2189
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2190
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2191
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2192
    if-eqz v1, :cond_0

    .line 2193
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v2

    .line 2194
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 2195
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2196
    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    if-eq v2, v3, :cond_1

    .line 2197
    invoke-interface {v4, v1, v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2201
    :goto_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteAndReplace()V

    .line 2190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2199
    :cond_1
    invoke-interface {v4, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 2206
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2207
    return-void
.end method

.method private isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z
    .locals 1
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1985
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 897
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    const/4 v1, 0x0

    .line 902
    :goto_0
    return v1

    .line 901
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 902
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 732
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    return-void
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .parameter "o"

    .prologue
    .line 1424
    move v3, p1

    .line 1425
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1426
    .local v6, text:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1428
    .local v2, length:I
    move v5, v2

    .line 1429
    .local v5, realLength:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1430
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 1431
    add-int/lit8 v5, v5, -0x1

    .line 1429
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1439
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 1447
    .end local v3           #offset:I
    .local v4, offset:I
    :goto_1
    return v4

    .line 1442
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1443
    .local v0, editable:Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1445
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 1447
    .end local v3           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method private scrollBottomIntoView()V
    .locals 4

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2181
    :cond_0
    return-void
.end method

.method private scrollLineIntoView(I)V
    .locals 3
    .parameter "line"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1367
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1851
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_0

    .line 1852
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1853
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1854
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1855
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1856
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1857
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1858
    new-instance v1, Lcom/android/ex/chips/RecipientChip;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-direct {v1, v2, v0, v5}, Lcom/android/ex/chips/RecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V

    move-object v0, v1

    .line 1911
    :goto_0
    return-object v0

    .line 1859
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v0

    const-wide/16 v3, -0x2

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 1860
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1861
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1862
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1865
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 1866
    goto :goto_0

    .line 1868
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1873
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1874
    const-string v4, ""

    invoke-static {v2, v1, v3, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1875
    if-eq v1, v5, :cond_2

    if-ne v3, v5, :cond_4

    .line 1876
    :cond_2
    const-string v1, "RecipientEditTextView"

    const-string v2, "The chip being selected no longer exists but should."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 1881
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_3

    .line 1882
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 1884
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 1885
    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1871
    goto :goto_0

    .line 1878
    :cond_4
    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1888
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1889
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1890
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1893
    :try_start_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1898
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1899
    const-string v4, ""

    invoke-static {v2, v1, v3, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1900
    if-eq v1, v5, :cond_6

    if-ne v3, v5, :cond_8

    .line 1901
    :cond_6
    const-string v1, "RecipientEditTextView"

    const-string v2, "The chip being selected no longer exists but should."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 1906
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_7

    .line 1907
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 1909
    :cond_7
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 1910
    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 1894
    :catch_1
    move-exception v0

    .line 1895
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1896
    goto/16 :goto_0

    .line 1903
    :cond_8
    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method private setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v7, -0x4080

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 633
    sget-object v2, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v2, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 635
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 636
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 637
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 638
    sget v2, Lcom/android/ex/chips/R$drawable;->chip_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 640
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 642
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 643
    sget v2, Lcom/android/ex/chips/R$drawable;->chip_background_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 645
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 646
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 647
    sget v2, Lcom/android/ex/chips/R$drawable;->chip_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 649
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 650
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    if-ne v2, v5, :cond_3

    .line 651
    sget v2, Lcom/android/ex/chips/R$dimen;->chip_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 653
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 655
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    if-ne v2, v5, :cond_4

    .line 656
    sget v2, Lcom/android/ex/chips/R$layout;->chips_alternate_item:I

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 659
    :cond_4
    sget v2, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 661
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$layout;->more_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 663
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 664
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_5

    .line 665
    sget v2, Lcom/android/ex/chips/R$dimen;->chip_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 667
    :cond_5
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 668
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    .line 669
    sget v2, Lcom/android/ex/chips/R$dimen;->chip_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 671
    :cond_6
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 673
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    .line 674
    sget v2, Lcom/android/ex/chips/R$drawable;->chip_background_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 676
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$dimen;->line_spacing_extra:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    .line 677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 678
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 6
    .parameter "currentChip"
    .parameter "popup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 1918
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1919
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 1922
    .local v0, bottom:I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1923
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1924
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1925
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1926
    new-instance v3, Lcom/android/ex/chips/RecipientEditTextView$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$7;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1933
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1934
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1935
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1936
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1937
    return-void
.end method

.method private showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 8
    .parameter "currentChip"
    .parameter "alternatesPopup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1371
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1373
    .local v1, line:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 1374
    const/4 v0, 0x0

    .line 1381
    .local v0, bottom:I
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1382
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1383
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1385
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1387
    iput v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1388
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1389
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1390
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1395
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    if-eq v3, v6, :cond_0

    .line 1396
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1397
    iput v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1399
    :cond_0
    return-void

    .line 1376
    .end local v0           #bottom:I
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_1
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v0, v3

    .restart local v0       #bottom:I
    goto :goto_0
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2523
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2524
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2525
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/ex/chips/R$layout;->copy_chip_dialog_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2526
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2527
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2528
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2529
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2531
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2532
    sget v1, Lcom/android/ex/chips/R$string;->copy_number:I

    .line 2536
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2537
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2538
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2539
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2540
    return-void

    .line 2534
    :cond_0
    sget v1, Lcom/android/ex/chips/R$string;->copy_email:I

    goto :goto_0
.end method

.method private shrink()V
    .locals 6

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 426
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 400
    :cond_2
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_4

    .line 401
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 424
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 405
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 406
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v4, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 407
    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_3

    .line 408
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 409
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 411
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_6

    .line 412
    add-int/lit8 v0, v0, 0x1

    .line 416
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 417
    if-eq v0, v4, :cond_7

    .line 418
    invoke-direct {p0, v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    goto :goto_2

    .line 420
    :cond_7
    invoke-direct {p0, v3, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_2
.end method

.method private startDrag(Lcom/android/ex/chips/RecipientChip;)V
    .locals 5
    .parameter "currentChip"

    .prologue
    .line 2469
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2470
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 2473
    .local v1, data:Landroid/content/ClipData;
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 2477
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 2478
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 5
    .parameter

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 1562
    if-nez v0, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1565
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1567
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1568
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1570
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1571
    const-string v4, ""

    invoke-static {v3, v2, v1, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1572
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    .line 1574
    invoke-interface {v3, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1576
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0
.end method

.method private tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "destination"

    .prologue
    .line 986
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 987
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 988
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 990
    .end local p1
    :cond_0
    return-object p1
.end method

.method private unselectChip(Lcom/android/ex/chips/RecipientChip;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    .line 1946
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1947
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1948
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1949
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_3

    .line 1950
    :cond_0
    const-string v0, "RecipientEditTextView"

    const-string v1, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1952
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1966
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1967
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1968
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1969
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1971
    :cond_2
    return-void

    .line 1954
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1955
    const-string v3, ""

    invoke-static {v2, v0, v1, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1956
    invoke-interface {v2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1958
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v3, :cond_1

    .line 1959
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    const/16 v4, 0x21

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1962
    :catch_0
    move-exception v0

    .line 1963
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, displayString:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 352
    .local v1, seperatorPos:I
    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 355
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v0           #displayString:Ljava/lang/String;
    .end local v1           #seperatorPos:I
    :cond_1
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v2, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .parameter "text"

    .prologue
    .line 1722
    const/4 v1, 0x0

    .line 1723
    .local v1, tokenCount:I
    const/4 v0, 0x0

    .line 1724
    .local v0, start:I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1725
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 1726
    add-int/lit8 v1, v1, 0x1

    .line 1727
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1731
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1474
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1475
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 1480
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1481
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1494
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1495
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0

    .line 1483
    :cond_3
    if-eqz v2, :cond_4

    .line 1486
    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1487
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 1488
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1491
    :cond_4
    new-instance v3, Landroid/text/util/Rfc822Token;

    invoke-direct {v3, v0, v2, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 5
    .parameter "entry"

    .prologue
    .line 1503
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1504
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1506
    :cond_0
    const/4 v1, 0x0

    .line 1508
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1511
    :cond_2
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1512
    .local v2, tokenized:[Landroid/text/util/Rfc822Token;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 1513
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .end local v2           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1521
    .end local v1           #display:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1518
    .restart local v1       #display:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v0

    .line 1519
    goto :goto_0

    .line 1521
    :cond_5
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 1741
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_1

    .line 1742
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChipPlainText()V

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 1751
    array-length v1, v0

    if-lez v1, :cond_2

    .line 1752
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1754
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    .line 1756
    if-eqz v4, :cond_3

    array-length v0, v4

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 1757
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_0

    .line 1760
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    .line 1761
    array-length v6, v4

    .line 1762
    add-int/lit8 v7, v6, -0x2

    .line 1763
    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v8

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 1767
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 1768
    sub-int v0, v6, v7

    move v1, v2

    move v3, v2

    :goto_1
    array-length v10, v4

    if-ge v0, v10, :cond_9

    .line 1769
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    sub-int v10, v6, v7

    if-ne v0, v10, :cond_5

    .line 1771
    aget-object v3, v4, v0

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1773
    :cond_5
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_6

    .line 1774
    aget-object v1, v4, v0

    invoke-interface {v5, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1776
    :cond_6
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1777
    :cond_7
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 1778
    aget-object v11, v4, v0

    invoke-interface {v5, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 1779
    aget-object v12, v4, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1781
    :cond_8
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1783
    :cond_9
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1784
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1786
    :cond_a
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1787
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1788
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v9, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1789
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v8, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1790
    invoke-interface {v9, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1791
    iput-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1704
    .local v5, text:Landroid/text/Editable;
    const/4 v4, 0x0

    .line 1705
    .local v4, start:I
    move v1, v4

    .line 1706
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 1707
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 1708
    move v4, v1

    .line 1706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1711
    :cond_0
    const/4 v4, 0x0

    .line 1712
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 1713
    .local v6, tokenCount:I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 1714
    .local v3, moreSpan:Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1715
    .local v0, chipText:Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1716
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1717
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1718
    return-void
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 2462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 2463
    return-void
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "contact"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getLastChip()Lcom/android/ex/chips/RecipientChip;
    .locals 3

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, last:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 302
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 303
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 305
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1673
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 1675
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v0, v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;
    .locals 4

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1628
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1630
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 1631
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$6;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$6;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1646
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    return-object v0
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2232
    .local v7, text:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v7, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2233
    .local v5, originalTokenStart:I
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2234
    .local v4, lastAddress:Ljava/lang/String;
    move v9, v5

    .line 2235
    .local v9, tokenStart:I
    move v6, v9

    .line 2236
    .local v6, prevTokenStart:I
    const/4 v3, 0x0

    .line 2237
    .local v3, findChip:Lcom/android/ex/chips/RecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2238
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v9, :cond_2

    .line 2240
    :goto_0
    if-eqz v9, :cond_0

    if-nez v3, :cond_0

    .line 2241
    move v6, v9

    .line 2242
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 2243
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    goto :goto_0

    .line 2245
    :cond_0
    if-eq v9, v5, :cond_2

    .line 2246
    if-eqz v3, :cond_1

    .line 2247
    move v9, v6

    .line 2251
    :cond_1
    :goto_1
    if-ge v9, v5, :cond_2

    .line 2252
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 2253
    .local v8, tokenEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2254
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v1

    .line 2255
    .local v1, createdChip:Lcom/android/ex/chips/RecipientChip;
    if-nez v1, :cond_4

    .line 2266
    .end local v1           #createdChip:Lcom/android/ex/chips/RecipientChip;
    .end local v8           #tokenEnd:I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2267
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2268
    .local v2, editable:Landroid/text/Editable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 2269
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v2}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2270
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    .end local v2           #editable:Landroid/text/Editable;
    :cond_3
    return-object v0

    .line 2259
    .restart local v1       #createdChip:Lcom/android/ex/chips/RecipientChip;
    .restart local v8       #tokenEnd:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 2260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method handlePendingChips()V
    .locals 13

    .prologue
    const/16 v9, 0x32

    const/4 v8, 0x2

    .line 752
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getViewWidth()I

    move-result v5

    if-gtz v5, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_0

    .line 762
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v6

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 765
    .local v1, editable:Landroid/text/Editable;
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gt v5, v9, :cond_6

    .line 766
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 767
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 768
    .local v0, current:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 769
    .local v4, tokenStart:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 770
    .local v3, tokenEnd:I
    if-ltz v4, :cond_3

    .line 773
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_2

    .line 775
    add-int/lit8 v3, v3, 0x1

    .line 777
    :cond_2
    invoke-direct {p0, v4, v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;)V

    .line 779
    :cond_3
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 781
    .end local v0           #current:Ljava/lang/String;
    .end local v3           #tokenEnd:I
    .end local v4           #tokenStart:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeEnd()V

    .line 786
    .end local v2           #i:I
    :goto_2
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v9, :cond_8

    .line 788
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_7

    .line 789
    :cond_5
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v7}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 790
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 805
    :goto_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 806
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 807
    monitor-exit v6

    goto/16 :goto_0

    .end local v1           #editable:Landroid/text/Editable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 783
    .restart local v1       #editable:Landroid/text/Editable;
    :cond_6
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    goto :goto_2

    .line 793
    :cond_7
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    .line 794
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 797
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_3

    .line 802
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 803
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return v4

    .line 1294
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1295
    .local v1, end:I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1296
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1297
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1298
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1299
    .local v0, atEnd:C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isPhoneQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2574
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePastTerminators(I)I
    .locals 4
    .parameter "tokenEnd"

    .prologue
    .line 2277
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 2289
    .end local p1
    .local v1, tokenEnd:I
    :goto_0
    return v1

    .line 2280
    .end local v1           #tokenEnd:I
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2281
    .local v0, atEnd:C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 2282
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 2286
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 2287
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 2289
    .end local p1
    .restart local v1       #tokenEnd:I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1414
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1415
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1417
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1418
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2567
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2569
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2570
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2571
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/RecipientChip;IFF)V
    .locals 1
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2061
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/RecipientEditTextView;->isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1668
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 285
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 286
    .local v1, imeActions:I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 288
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 290
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 292
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 293
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 296
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1656
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2562
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2429
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2485
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2496
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2488
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2490
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_0

    .line 2493
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 2485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    .line 268
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2435
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 368
    if-nez p1, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1556
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    .line 1557
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1245
    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    const/4 v0, 0x1

    .line 1249
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1020
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1022
    const/4 v0, 0x1

    .line 1024
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1037
    sparse-switch p1, :sswitch_data_0

    .line 1065
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 1040
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_2

    .line 1045
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1047
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1053
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_3

    .line 1055
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1059
    :goto_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1057
    :cond_3
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    goto :goto_1

    .line 1037
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 2440
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v4, :cond_1

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2444
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2445
    .local v3, y:F
    invoke-virtual {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    .line 2446
    .local v1, offset:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 2447
    .local v0, currentChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    .line 2448
    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_2

    .line 2450
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Lcom/android/ex/chips/RecipientChip;)V

    goto :goto_0

    .line 2453
    :cond_2
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1660
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 333
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2545
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 313
    .local v0, last:Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 318
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2551
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2556
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 709
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 710
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 711
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 718
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 719
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 720
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 721
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 714
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 723
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 724
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 726
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    .line 728
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2211
    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 2212
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2214
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 2215
    const/4 v0, 0x1

    .line 2217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 1322
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1324
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1360
    :cond_0
    :goto_0
    return v3

    .line 1326
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1327
    .local v3, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1328
    .local v0, action:I
    const/4 v1, 0x0

    .line 1329
    .local v1, chipWasSelected:Z
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v7, :cond_2

    .line 1330
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1332
    :cond_2
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v7, :cond_4

    if-ne v0, v11, :cond_4

    .line 1333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1334
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1335
    .local v6, y:F
    invoke-virtual {p0, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v4

    .line 1336
    .local v4, offset:I
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 1337
    .local v2, currentChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_7

    .line 1338
    if-ne v0, v11, :cond_3

    .line 1339
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eq v7, v2, :cond_5

    .line 1340
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1341
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1350
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 1351
    const/4 v3, 0x1

    .line 1357
    .end local v2           #currentChip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #offset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_4
    :goto_2
    if-ne v0, v11, :cond_0

    if-nez v1, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1342
    .restart local v2       #currentChip:Lcom/android/ex/chips/RecipientChip;
    .restart local v4       #offset:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_5
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v7, :cond_6

    .line 1343
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1344
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1345
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    goto :goto_1

    .line 1347
    :cond_6
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->onClick(Lcom/android/ex/chips/RecipientChip;IFF)V

    goto :goto_1

    .line 1352
    :cond_7
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 1354
    const/4 v1, 0x1

    goto :goto_2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    .line 1276
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1279
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1280
    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1281
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1285
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/RecipientChip;)V
    .locals 8
    .parameter "chip"

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1994
    .local v2, spannable:Landroid/text/Spannable;
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1995
    .local v1, spanStart:I
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1996
    .local v0, spanEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1997
    .local v3, text:Landroid/text/Editable;
    move v4, v0

    .line 1998
    .local v4, toDelete:I
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-ne p1, v6, :cond_1

    const/4 v5, 0x1

    .line 2000
    .local v5, wasSelected:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2001
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2004
    :cond_0
    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 2005
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1998
    .end local v5           #wasSelected:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2007
    .restart local v5       #wasSelected:Z
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2008
    if-ltz v1, :cond_3

    if-lez v4, :cond_3

    .line 2009
    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2011
    :cond_3
    if-eqz v5, :cond_4

    .line 2012
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2014
    :cond_4
    return-void
.end method

.method removeMoreChip()V
    .locals 11

    .prologue
    .line 1800
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_0

    .line 1801
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 1802
    .local v7, span:Landroid/text/Spannable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1803
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1805
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1807
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v6

    .line 1810
    .local v6, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-nez v9, :cond_1

    .line 1836
    .end local v6           #recipients:[Lcom/android/ex/chips/RecipientChip;
    .end local v7           #span:Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 1813
    .restart local v6       #recipients:[Lcom/android/ex/chips/RecipientChip;
    .restart local v7       #span:Landroid/text/Spannable;
    :cond_1
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1814
    .local v4, end:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1815
    .local v3, editable:Landroid/text/Editable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientChip;

    .line 1820
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1825
    .local v8, token:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1826
    .local v2, chipStart:I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, chipEnd:I
    move v4, v1

    .line 1828
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 1829
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1833
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v1           #chipEnd:I
    .end local v2           #chipStart:I
    .end local v8           #token:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 2076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 2077
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2078
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 2022
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-ne p1, v0, :cond_4

    move v1, v2

    .line 2023
    :goto_0
    if-eqz v1, :cond_0

    .line 2024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2026
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 2027
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    .line 2028
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2029
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2030
    invoke-direct {p0, p2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2031
    if-eqz v6, :cond_2

    .line 2032
    if-eq v4, v7, :cond_1

    if-ne v0, v7, :cond_5

    .line 2033
    :cond_1
    const-string v0, "RecipientEditTextView"

    const-string v4, "The chip to replace does not exist but should."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2049
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2050
    if-eqz v1, :cond_3

    .line 2051
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2053
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 2022
    goto :goto_0

    .line 2036
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2042
    :goto_2
    if-ltz v0, :cond_6

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_6

    .line 2043
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2045
    :cond_6
    invoke-interface {v5, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1012
    return-void
.end method

.method sanitizeBetween()V
    .locals 8

    .prologue
    .line 1164
    iget v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 1169
    .local v3, recips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1170
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1171
    .local v2, last:Lcom/android/ex/chips/RecipientChip;
    const/4 v0, 0x0

    .line 1172
    .local v0, beforeLast:Lcom/android/ex/chips/RecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1173
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1175
    :cond_2
    const/4 v4, 0x0

    .line 1176
    .local v4, startLooking:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1177
    .local v1, end:I
    if-eqz v0, :cond_3

    .line 1178
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1179
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1180
    .local v5, text:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1184
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1185
    add-int/lit8 v4, v4, 0x1

    .line 1188
    .end local v5           #text:Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 6

    .prologue
    .line 821
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 830
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 835
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 836
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 837
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 838
    if-le v2, v0, :cond_0

    .line 840
    const-string v3, "RecipientEditTextView"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 841
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 833
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    goto :goto_1
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .parameter "tokenizer"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 996
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 997
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1002
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1003
    return-void
.end method

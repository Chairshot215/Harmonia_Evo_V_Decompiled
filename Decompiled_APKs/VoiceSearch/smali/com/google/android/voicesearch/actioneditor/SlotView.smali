.class public abstract Lcom/google/android/voicesearch/actioneditor/SlotView;
.super Landroid/widget/EditText;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanDelete:Z

.field private mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

.field private mShowKeyboard:Z

.field private mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

.field private mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSpan:Landroid/text/style/StyleSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x102002a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x1020021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x1020023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x1020020

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x102001f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x1020029

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x1020028

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCanDelete:Z

    .line 81
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/StyleSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/TextAppearanceSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    return-object v0
.end method

.method private createTitle()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a07de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, format:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/SlotSpec;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/google/android/voicesearch/util/TextUtil;->createForceUppercaseAnnotation()Landroid/text/Annotation;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    return-object v1
.end method

.method private initTitle()V
    .locals 5

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->createTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    .line 126
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;

    .line 129
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 132
    .local v0, editable:Landroid/text/Editable;
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 133
    return-void
.end method

.method private initWatcher()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotView$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    return-void
.end method

.method private safeCharAt(Ljava/lang/CharSequence;I)C
    .locals 1
    .parameter "string"
    .parameter "index"

    .prologue
    .line 248
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private tryShowKeyboard()Z
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 328
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addValueListener(Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method

.method public getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    return-object v0
.end method

.method public abstract getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 5
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "Slot"

    const-string v3, "Slots cannot be inited more than once."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 106
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    .line 108
    iput-object p3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 109
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->initTitle()V

    .line 111
    invoke-virtual {p3}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v1

    .line 112
    .local v1, maxLength:I
    if-lez v1, :cond_1

    .line 113
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 114
    .local v0, filters:[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setFilters([Landroid/text/InputFilter;)V

    .line 120
    .end local v0           #filters:[Landroid/text/InputFilter;
    :cond_1
    invoke-virtual {p0, p4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->initWatcher()V

    goto :goto_0
.end method

.method protected inputString(Ljava/lang/CharSequence;)V
    .locals 13
    .parameter "string"

    .prologue
    const/4 v10, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    .line 263
    .local v9, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v11

    if-gez v11, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v6

    .line 268
    .local v6, selectionStart:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v4

    .line 272
    .local v4, selectionEnd:I
    add-int/lit8 v11, v6, -0x1

    invoke-direct {p0, v9, v11}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v1

    .line 273
    .local v1, charBeforeReplacement:C
    invoke-direct {p0, v9, v4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v0

    .line 274
    .local v0, charAfterReplacement:C
    invoke-direct {p0, p1, v10}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v2

    .line 275
    .local v2, firstCharOfString:C
    iget-object v11, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_4

    const/4 v7, 0x1

    .line 278
    .local v7, selectionStartIsAtStartOfValue:Z
    :goto_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 280
    .local v8, stringToAdd:Landroid/text/SpannableStringBuilder;
    if-nez v7, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 282
    const-string v11, " "

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 285
    :cond_1
    invoke-virtual {v8, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 287
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 289
    const-string v11, " "

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 293
    :cond_2
    sub-int v5, v4, v6

    .line 294
    .local v5, selectionLength:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    add-int/2addr v11, v12

    sub-int v3, v11, v5

    .line 295
    .local v3, newLength:I
    iget-object v11, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v11}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v11

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v11}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v11

    if-le v3, v11, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a07d8

    invoke-static {v11, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 302
    :cond_3
    const-string v10, ""

    invoke-interface {v9, v6, v4, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 305
    invoke-interface {v9, v6, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 306
    return-void

    .end local v3           #newLength:I
    .end local v5           #selectionLength:I
    .end local v7           #selectionStartIsAtStartOfValue:Z
    .end local v8           #stringToAdd:Landroid/text/SpannableStringBuilder;
    :cond_4
    move v7, v10

    .line 275
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    sget-object v2, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 444
    .local v1, menuId:I
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 447
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #menuId:I
    :cond_0
    return-void
.end method

.method protected onParentScrolled()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(II)V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x1020020

    .line 408
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 429
    :goto_0
    return v1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_3

    const v1, 0x1020021

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_3

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 422
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 424
    if-ne p1, v3, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->resetStringValue()V

    .line 427
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 429
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected onValueChanged()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 334
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    .line 336
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->tryShowKeyboard()Z

    .line 338
    :cond_0
    return-void
.end method

.method protected resetStringValue()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 245
    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0
    .parameter "canDelete"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCanDelete:Z

    .line 383
    return-void
.end method

.method public abstract setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
.end method

.method protected setStringValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 237
    return-void
.end method

.method public showInvalid()V
    .locals 5

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 342
    .local v0, text:Landroid/text/Editable;
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 343
    return-void
.end method

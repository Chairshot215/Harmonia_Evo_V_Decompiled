.class public Lcom/android/browser/autocomplete/SuggestedTextController;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;,
        Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;,
        Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;,
        Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;,
        Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;,
        Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;,
        Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "Browser.SuggestedTextController"


# instance fields
.field private final mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

.field private final mBufferTextWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;

.field private mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

.field private final mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

.field private mSuggestedText:Ljava/lang/String;

.field private mSuspended:Z

.field private final mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

.field private mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

.field private final mTextWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserEntered:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 1
    .parameter "textView"
    .parameter "color"

    .prologue
    .line 69
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedTextController$1;

    invoke-direct {v0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$1;-><init>(Landroid/widget/EditText;)V

    invoke-direct {p0, v0, p2}, Lcom/android/browser/autocomplete/SuggestedTextController;-><init>(Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;I)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;I)V
    .locals 3
    .parameter "textOwner"
    .parameter "color"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferTextWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;

    .line 53
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    .line 60
    iput-boolean v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuspended:Z

    .line 510
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    .line 511
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-direct {v0, p2}, Lcom/android/browser/autocomplete/SuggestedSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    .line 512
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    .line 514
    invoke-direct {p0, v1, v2, v2, v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 515
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/autocomplete/SuggestedTextController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/autocomplete/SuggestedTextController;Landroid/text/Editable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController;->handleTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;)Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/autocomplete/SuggestedTextController;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    return-object v0
.end method

.method private assertNotIgnoringSelectionChanges()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal operation while cursor movement processing suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method private handleTextChanged(Landroid/text/Editable;)V
    .locals 11
    .parameter "newText"

    .prologue
    const/4 v10, -0x1

    .line 239
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    invoke-virtual {v7}, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->isHandled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    invoke-virtual {v7}, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->setHandled()V

    .line 241
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    iget v5, v7, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mPos:I

    .line 242
    .local v5, pos:I
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    iget v1, v7, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mCountBefore:I

    .line 243
    .local v1, countBefore:I
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    iget v0, v7, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mCountAfter:I

    .line 244
    .local v0, countAfter:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 249
    .local v2, cursorPos:I
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    add-int v8, v5, v1

    add-int v9, v5, v0

    invoke-interface {p1, v5, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 253
    .local v6, userLen:I
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v10, :cond_5

    const/4 v3, 0x1

    .line 254
    .local v3, haveSuggested:Z
    :goto_1
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 256
    if-eqz v3, :cond_7

    .line 257
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 258
    if-le v0, v1, :cond_6

    .line 260
    sub-int v4, v0, v1

    .line 261
    .local v4, len:I
    add-int v7, v5, v4

    add-int v8, v5, v4

    add-int/2addr v8, v4

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 281
    .end local v4           #len:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 282
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 294
    :cond_3
    :goto_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    .line 295
    if-gtz v1, :cond_4

    if-lez v0, :cond_0

    .line 296
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->notifyUserEnteredChanged()V

    goto :goto_0

    .line 253
    .end local v3           #haveSuggested:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 264
    .restart local v3       #haveSuggested:Z
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 266
    if-nez v1, :cond_2

    .line 268
    invoke-static {p1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_2

    .line 274
    :cond_7
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 277
    if-ne v2, v6, :cond_2

    .line 278
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_2

    .line 284
    :cond_8
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-interface {p1, v7, v6, v8, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 288
    :cond_9
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 289
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 290
    iget-object v7, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3
.end method

.method private initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .parameter "userText"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "suggested"

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v3}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 92
    .local v2, text:Landroid/text/Editable;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 93
    :cond_0
    move-object v0, p1

    .line 94
    .local v0, allText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    .local v1, suggestedStart:I
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    move-object v0, p4

    .line 103
    :cond_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v2, v6, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 104
    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 105
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iput-object p4, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    .line 107
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v2, v3, v6, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 114
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    iget-object v4, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferTextWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;

    invoke-interface {v3, v4}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    return-void

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyUserEnteredChanged()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;

    .line 302
    .local v1, watcher:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;->onTextChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v1           #watcher:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserTextChangeWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method checkInvariant(Landroid/text/Spannable;)V
    .locals 10
    .parameter "s"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 475
    iget-object v5, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 476
    .local v3, suggestedStart:I
    iget-object v5, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 477
    .local v1, suggestedEnd:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 478
    .local v0, cursorPos:I
    if-eq v3, v8, :cond_0

    if-ne v1, v8, :cond_1

    .line 479
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    move v3, v1

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, userEntered:Ljava/lang/String;
    const-string v5, "Browser.SuggestedTextController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkInvariant all=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' (len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") sug="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cursor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ue=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' (len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sub-int v2, v1, v3

    .line 486
    .local v2, suggestedLen:I
    const-string v5, "Sum of user and suggested text lengths doesn\'t match total length"

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v5, v8, v9}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 488
    const-string v5, "End of user entered text doesn\'t match start of suggested"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v3, v8}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 490
    const-string v5, "user entered text does not match start of buffer"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v5, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 493
    iget-object v5, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 494
    const-string v5, "User entered is not a prefix of suggested"

    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v5, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 496
    const-string v5, "Suggested text does not match buffer contents"

    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v5, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 499
    :cond_2
    iget-object v5, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 500
    const-string v5, "Non-zero suggention length with null suggestion"

    invoke-static {v5, v7, v2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 505
    :goto_0
    const-string v5, "Cursor within suggested part"

    if-gt v0, v3, :cond_5

    :goto_1
    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 506
    return-void

    .line 502
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suggestion text longer than suggestion ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ">"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_4

    move v5, v6

    :goto_2
    invoke-static {v8, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    move v6, v7

    .line 505
    goto :goto_1
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 216
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCursorHandlingSuspended()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuspended:Z

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 5
    .parameter "state"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 142
    instance-of v1, p1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    if-nez v1, :cond_0

    .line 154
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    .line 149
    .local v0, ss:Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    invoke-interface {v1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferTextWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;

    invoke-interface {v1, v2}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v1, v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    iget v2, v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelStart:I

    iget v3, v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelEnd:I

    iget-object v4, v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/browser/autocomplete/SuggestedTextController;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->notifyUserEnteredChanged()V

    .line 154
    invoke-virtual {v0}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0
.end method

.method public resumeCursorMovementHandlingAndApplyChanges()V
    .locals 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v0}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 178
    .local v1, buffer:Landroid/text/Editable;
    iget-object v8, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    .line 179
    .local v8, oldSelection:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    .line 180
    new-instance v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    invoke-direct {v7, v1}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    .local v7, newSelection:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
    iget v0, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    iget v2, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    if-eq v0, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    iget v3, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    iget v4, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    iget v5, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    iget v6, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 186
    :cond_0
    iget v0, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    iget v2, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    if-eq v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mBufferSpanWatcher:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    iget v3, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    iget v4, v8, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    iget v5, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    iget v6, v7, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 191
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuspended:Z

    .line 192
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .parameter "superState"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 131
    new-instance v1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    invoke-direct {v1, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 132
    .local v1, ss:Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v2}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 133
    .local v0, buffer:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    .line 135
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelStart:I

    .line 136
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelEnd:I

    .line 137
    return-object v1
.end method

.method public setSuggestedText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 200
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    invoke-direct {v1, v2, v2, v2}, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;-><init>(III)V

    iput-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    .line 205
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 206
    .local v0, buffer:Landroid/text/Editable;
    invoke-direct {p0, v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->handleTextChanged(Landroid/text/Editable;)V

    .line 209
    .end local v0           #buffer:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 224
    if-nez p1, :cond_0

    const-string p1, ""

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 226
    .local v0, buffer:Landroid/text/Editable;
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 229
    return-void
.end method

.method public suspendCursorMovementHandling()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 167
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextOwner:Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 168
    .local v0, buffer:Landroid/text/Editable;
    new-instance v1, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    invoke-direct {v1, v0}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController;->mSuspended:Z

    .line 170
    return-void
.end method

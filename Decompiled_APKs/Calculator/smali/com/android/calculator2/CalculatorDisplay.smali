.class Lcom/android/calculator2/CalculatorDisplay;
.super Landroid/widget/ViewSwitcher;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorDisplay$Scroll;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C = null

.field private static final ANIM_DURATION:I = 0x1f4

.field private static final ANIM_DURATION_LAND_ENTER:I = 0x320


# instance fields
.field inAnimDown:Landroid/view/animation/TranslateAnimation;

.field inAnimUp:Landroid/view/animation/TranslateAnimation;

.field inAnimUpEnter:Landroid/view/animation/TranslateAnimation;

.field outAnimDown:Landroid/view/animation/TranslateAnimation;

.field outAnimUp:Landroid/view/animation/TranslateAnimation;

.field outAnimUpEnter:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-object v0
.end method


# virtual methods
.method getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method getNextEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method getSelectionStart()I
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 173
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    return v1
.end method

.method getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 126
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method insert(Ljava/lang/String;)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 112
    .local v1, editor:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 113
    .local v0, cursor:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 114
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gain"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->requestFocus()Z

    .line 182
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v5, 0x320

    const/4 v9, 0x1

    const-wide/16 v3, 0x1f4

    const/4 v8, 0x0

    .line 93
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p2

    invoke-direct {v1, v8, v8, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 94
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 95
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, p2

    int-to-float v2, v2

    invoke-direct {v1, v8, v8, v8, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 96
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 98
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, p2

    int-to-float v2, v2

    invoke-direct {v1, v8, v8, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 99
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 100
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p2

    invoke-direct {v1, v8, v8, v8, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 101
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 103
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 104
    .local v0, orientation:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p2

    invoke-direct {v1, v8, v8, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    .line 105
    iget-object v7, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    if-ne v0, v9, :cond_0

    move-wide v1, v3

    :goto_0
    invoke-virtual {v7, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 106
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, p2

    int-to-float v2, v2

    invoke-direct {v1, v8, v8, v8, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    .line 107
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    if-ne v0, v9, :cond_1

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 108
    return-void

    :cond_0
    move-wide v1, v5

    .line 105
    goto :goto_0

    :cond_1
    move-wide v3, v5

    .line 107
    goto :goto_1
.end method

.method protected setLogic(Lcom/android/calculator2/Logic;)V
    .locals 5
    .parameter "logic"

    .prologue
    .line 56
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorDisplay$1;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    .line 76
    .local v0, calculatorKeyListener:Landroid/text/method/NumberKeyListener;
    new-instance v1, Lcom/android/calculator2/CalculatorEditable$Factory;

    invoke-direct {v1, p1}, Lcom/android/calculator2/CalculatorEditable$Factory;-><init>(Lcom/android/calculator2/Logic;)V

    .line 77
    .local v1, factory:Landroid/text/Editable$Factory;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 79
    .local v3, text:Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 81
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v3           #text:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    return-void
.end method

.method setSelection(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 168
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 169
    return-void
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 139
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->showNext()V

    .line 142
    return-void

    .line 134
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUpEnter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .locals 3
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    sget-object p2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    .line 149
    :cond_0
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 161
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->showNext()V

    .line 164
    return-void

    .line 152
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_1
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

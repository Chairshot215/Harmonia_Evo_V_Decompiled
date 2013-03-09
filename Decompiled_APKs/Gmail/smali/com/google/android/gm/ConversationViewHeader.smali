.class public Lcom/google/android/gm/ConversationViewHeader;
.super Landroid/widget/RelativeLayout;
.source "ConversationViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationViewHeader$1;,
        Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;,
        Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

.field private mLabels:Lcom/google/android/gm/LabelSpanTextView;

.field private mSizeChanged:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ConversationViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private addSpan(Landroid/text/SpannableStringBuilder;Lcom/google/android/gm/LabelDisplayer$LabelValues;)V
    .locals 5
    .parameter "sb"
    .parameter "labelDisplay"

    .prologue
    const/16 v4, 0x21

    .line 163
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 164
    .local v1, start:I
    iget-object v2, p2, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 167
    .local v0, end:I
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v3, p2, Lcom/google/android/gm/LabelDisplayer$LabelValues;->backgroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 169
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p2, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    new-instance v2, Lcom/google/android/gm/LabelSpan;

    iget-object v3, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gm/LabelSpan;-><init>(Landroid/text/Spanned;Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 173
    return-void
.end method

.method private static getTotalMeasuredChildWidth(Landroid/view/View;)I
    .locals 3
    .parameter "child"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private handleSizeChanged()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mSizeChanged:Z

    .line 191
    return-void
.end method


# virtual methods
.method public getPremeasuredHeight()I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    return v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 182
    const v0, 0x7f0f003e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;->changeLabels()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0f003e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelSpanTextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/LabelSpanTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 86
    iget-object v2, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/google/android/gm/ConversationViewHeader;->getTotalMeasuredChildWidth(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-static {v3}, Lcom/google/android/gm/ConversationViewHeader;->getTotalMeasuredChildWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 89
    .local v1, totalWidth:I
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getMeasuredWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-virtual {v2}, Lcom/google/android/gm/LabelSpanTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    const v3, 0x7f0f0031

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 95
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 197
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mSizeChanged:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v0, p2}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;->setConversationHeaderSpacerHeight(I)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationViewHeader;->mSizeChanged:Z

    .line 206
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    .line 104
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 13
    .parameter "account"
    .parameter
    .parameter "isImportant"
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 131
    .local v11, sb:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gm/persistence/Persistence;->getPriorityInboxArrowsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 133
    .local v8, importanceArrowsEnabled:Z
    if-eqz v8, :cond_0

    if-eqz p3, :cond_0

    .line 134
    const/16 v1, 0x2e

    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 135
    new-instance v1, Lcom/google/android/gm/PriorityIndicatorSpan;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020027

    iget-object v4, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-virtual {v4}, Lcom/google/android/gm/LabelSpanTextView;->getPadding()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gm/PriorityIndicatorSpan;-><init>(Landroid/content/Context;III)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    :cond_0
    new-instance v10, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;-><init>(Lcom/google/android/gm/ConversationViewHeader$1;)V

    .line 141
    .local v10, labelDisplayer:Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;
    invoke-virtual {v10, p2}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;->loadConversationLabels(Ljava/util/Map;)V

    .line 143
    invoke-virtual {v10}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/LabelDisplayer$LabelValues;

    .line 144
    .local v9, labelDisplay:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    invoke-direct {p0, v11, v9}, Lcom/google/android/gm/ConversationViewHeader;->addSpan(Landroid/text/SpannableStringBuilder;Lcom/google/android/gm/LabelDisplayer$LabelValues;)V

    goto :goto_0

    .line 147
    .end local v9           #labelDisplay:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v0, Lcom/google/android/gm/LabelDisplayer$LabelValues;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f0b0013

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/LabelDisplayer$LabelValues;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    .line 152
    .local v0, addLabelDisplay:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    invoke-direct {p0, v11, v0}, Lcom/google/android/gm/ConversationViewHeader;->addSpan(Landroid/text/SpannableStringBuilder;Lcom/google/android/gm/LabelDisplayer$LabelValues;)V

    .line 155
    .end local v0           #addLabelDisplay:Lcom/google/android/gm/LabelDisplayer$LabelValues;
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/ConversationViewHeader;->mLabels:Lcom/google/android/gm/LabelSpanTextView;

    invoke-virtual {v1, v11}, Lcom/google/android/gm/LabelSpanTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    if-eqz p4, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/google/android/gm/ConversationViewHeader;->handleSizeChanged()V

    .line 160
    :cond_3
    return-void
.end method

.method public setSubject(Ljava/lang/String;Z)V
    .locals 3
    .parameter "subject"
    .parameter "notify"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubject:Ljava/lang/String;

    .line 108
    move-object v0, p1

    .line 109
    .local v0, subjectToShow:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ConversationViewHeader;->mCallbacks:Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v1, p1}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewHeaderCallbacks;->getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/android/gm/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/google/android/gm/ConversationViewHeader;->handleSizeChanged()V

    .line 121
    :cond_2
    return-void
.end method

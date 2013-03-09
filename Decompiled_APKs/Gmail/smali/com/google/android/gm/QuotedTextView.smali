.class Lcom/google/android/gm/QuotedTextView;
.super Landroid/widget/LinearLayout;
.source "QuotedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/QuotedTextView$RespondInlineListener;,
        Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;
    }
.end annotation


# instance fields
.field private mIncludeText:Z

.field private mQuotedText:Ljava/lang/CharSequence;

.field private mQuotedTextWebView:Landroid/webkit/WebView;

.field private mRespondInlineButton:Landroid/widget/Button;

.field private mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

.field private mShowHideCheckBox:Landroid/widget/CheckBox;

.field private mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gm/QuotedTextView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/QuotedTextView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/QuotedTextView;)Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f04004c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v1, 0x7f0f00b2

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    .line 44
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 46
    const v1, 0x7f0f00af

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    .line 47
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/android/gm/QuotedTextView$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/QuotedTextView$1;-><init>(Lcom/google/android/gm/QuotedTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0f00b0

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method private populateData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gm/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f0c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, backgroundColor:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gm/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, fontColor:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<head><style type=\"text/css\">* body { background-color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; }</style></head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, html:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private updateCheckedState(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gm/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public allowQuotedText(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 74
    const v1, 0x7f0f00ae

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, quotedTextRow:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 76
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public allowRespondInline(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    :cond_0
    return-void

    .line 86
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getQuotedTextIfIncluded()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowingQuotedText()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isTextIncluded()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/QuotedTextView;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, plainQuotedText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gm/QuotedTextView$RespondInlineListener;->onRespondInline(Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/QuotedTextView;->updateCheckedState(Z)V

    .line 189
    iget-object v2, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    const v2, 0x7f0f00ac

    invoke-virtual {p0, v2}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, quotedTextView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7f0f00b0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    :cond_0
    return-void
.end method

.method public setQuotedText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "quotedText"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0, v2}, Lcom/google/android/gm/QuotedTextView;->setVisibility(I)V

    .line 112
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 113
    invoke-direct {p0}, Lcom/google/android/gm/QuotedTextView;->populateData()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRespondInlineListener(Lcom/google/android/gm/QuotedTextView$RespondInlineListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

    .line 159
    return-void
.end method

.method public setShowHideListener(Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;

    .line 154
    return-void
.end method

.method public updateQuotedTextVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 102
    iput-boolean p1, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

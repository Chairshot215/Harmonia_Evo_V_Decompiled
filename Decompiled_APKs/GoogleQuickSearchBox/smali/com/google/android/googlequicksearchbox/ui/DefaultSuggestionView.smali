.class public Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;,
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$ViewType;,
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
    }
.end annotation


# instance fields
.field private mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field private mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field private mIcon2Spinner:Landroid/widget/ProgressBar;

.field private mSelfIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;)Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getSelfIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "url"

    .prologue
    .line 170
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v0, text:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0008

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    return-object v0
.end method

.method private getSelfIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mSelfIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mSelfIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mSelfIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    return-object v0
.end method

.method private setIcon2(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
    .locals 3
    .parameter "src"
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "spinner"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2Spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2Spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2Spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2Spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "v"
    .parameter "drawable"
    .parameter "reserveSpace"

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    if-nez p1, :cond_1

    .line 205
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_1
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "context"
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "showRemoveFromHistory"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    :goto_0
    return v3

    .line 108
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    .local v1, text1:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 110
    .local v2, text2:Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 112
    .local v0, src:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->isShowSingleLine()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 121
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->isInternalSource()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    const v5, 0x7f020012

    invoke-virtual {p0, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setBackgroundResource(I)V

    .line 128
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 130
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 131
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 137
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setText2(Ljava/lang/CharSequence;)V

    .line 139
    if-nez v0, :cond_6

    .line 141
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const-string v5, " "

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v6, v6}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    :goto_4
    move v3, v4

    .line 166
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 124
    :cond_4
    const v5, 0x7f020011

    invoke-virtual {p0, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setBackgroundResource(I)V

    goto :goto_2

    .line 133
    :cond_5
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 134
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 135
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_3

    .line 145
    :cond_6
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon1:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    sget-object v3, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 148
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setIcon2(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v0, v6}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, v6, v6}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setIcon2(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_4

    .line 156
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v6, v6}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v6, v6}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setIcon2(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_4

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 79
    const v0, 0x7f10002a

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2Spinner:Landroid/widget/ProgressBar;

    .line 80
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon1:Landroid/widget/ImageView;

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZZ)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 81
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2:Landroid/widget/ImageView;

    move-object v1, p0

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZZ)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 82
    return-void
.end method

.class public Lcom/google/android/gsf/login/LearnMoreActivity;
.super Landroid/app/Activity;
.source "LearnMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    return-void
.end method

.method protected static linkifyAndSetText(Lcom/google/android/gsf/login/BaseActivity;Landroid/widget/TextView;III)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    .line 105
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 107
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 109
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 111
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 112
    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 113
    new-instance v8, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;

    invoke-direct {v8, p0, p3, p4}, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;II)V

    .line 114
    invoke-virtual {v2, v8}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v3, v8, v7, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v5

    .line 116
    const-string v5, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to convert value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to a number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 121
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "title_id"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 52
    .local v4, titleId:I
    if-ne v4, v8, :cond_0

    .line 53
    const-string v6, "GLSActivity"

    const-string v7, "LearnMoreActivity.onCreate(): no title passed; exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 56
    :cond_0
    const-string v6, "msg_id"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, msgId:I
    if-ne v2, v8, :cond_1

    .line 58
    const-string v6, "GLSActivity"

    const-string v7, "LearnMoreActivity.onCreate(): no msg passed; exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 62
    :cond_1
    const v6, 0x7f03000d

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->setContentView(I)V

    .line 63
    const v6, 0x7f0c0002

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    .local v5, titleView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const v6, 0x7f0c002b

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, msgView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    const v6, 0x7f0c0011

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, backButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

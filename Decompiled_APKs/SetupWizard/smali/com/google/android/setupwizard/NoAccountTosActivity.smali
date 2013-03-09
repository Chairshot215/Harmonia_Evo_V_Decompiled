.class public Lcom/google/android/setupwizard/NoAccountTosActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "NoAccountTosActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/NoAccountTosActivity$1;,
        Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;,
        Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;,
        Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    .line 218
    return-void
.end method

.method private linkifyAndSetText(Landroid/widget/TextView;ILcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->getResources()Landroid/content/res/Resources;

    .line 245
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 247
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 250
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 251
    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 252
    new-instance v7, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p3, v8}, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;Lcom/google/android/setupwizard/NoAccountTosActivity$1;)V

    .line 253
    invoke-virtual {v2, v7}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 259
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 261
    return-void

    .line 254
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mNextButton:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/NoAccountTosActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 71
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mBackButton:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->setBackButton(Landroid/view/View;)V

    .line 74
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mText:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity;->mText:Landroid/widget/TextView;

    const v1, 0x7f09005f

    new-instance v2, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;

    const v3, 0x7f090022

    const-string v4, "google_setup:generic_tos_url"

    const-string v5, "http://www.google.com/intl/%y_%z/mobile/android/basic/phone-legal.html"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/setupwizard/NoAccountTosActivity;->linkifyAndSetText(Landroid/widget/TextView;ILcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V

    .line 78
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->start()V

    .line 83
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/setupwizard/NoAccountTosActivity;->finish()V

    .line 85
    return-void
.end method

.class public Lcom/google/android/gsf/login/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;,
        Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;
    }
.end annotation


# static fields
.field private static final ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;


# instance fields
.field private mParent:Lcom/google/android/gsf/login/BaseActivity;

.field private mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLUS_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V
    .locals 0
    .parameter "parent"
    .parameter "policy"

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/google/android/gsf/login/LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    .line 266
    iput-object p2, p0, Lcom/google/android/gsf/login/LinkSpan;->mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 267
    return-void
.end method

.method static linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 282
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v1, Landroid/text/Annotation;

    invoke-virtual {v4, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 284
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 285
    array-length v6, v0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v0, v3

    .line 286
    const-string v1, "id"

    invoke-virtual {v7}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {v7}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    move v1, v2

    .line 290
    :goto_1
    :try_start_0
    sget-object v9, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 291
    sget-object v9, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 292
    invoke-virtual {v4, v7}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 293
    invoke-virtual {v4, v7}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 294
    new-instance v11, Lcom/google/android/gsf/login/LinkSpan;

    sget-object v12, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aget-object v12, v12, v1

    invoke-direct {v11, p0, v12}, Lcom/google/android/gsf/login/LinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    .line 295
    invoke-virtual {v4, v11}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v5, v11, v9, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_1
    const-string v1, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No such policy while creating link, id=\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_2
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    const-string v1, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to convert value \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' to a number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    :cond_3
    return-object v5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/gsf/login/LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v1, p0, Lcom/google/android/gsf/login/LinkSpan;->mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->showAgreement(Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    .line 272
    return-void
.end method

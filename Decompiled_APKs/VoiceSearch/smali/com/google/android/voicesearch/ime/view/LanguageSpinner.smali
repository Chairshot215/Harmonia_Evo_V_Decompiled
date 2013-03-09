.class public Lcom/google/android/voicesearch/ime/view/LanguageSpinner;
.super Landroid/widget/Spinner;
.source "LanguageSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

.field private mCurrentLocale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "mode"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCurrentLocale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    return-object v0
.end method

.method private getHumanReadableLanguages()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 88
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 89
    .local v0, cs:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->toHumanReadable()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0806

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, languageSettings:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    array-length v3, v3

    aput-object v2, v0, v3

    .line 100
    return-object v0

    .line 97
    .end local v2           #languageSettings:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0807

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #languageSettings:Ljava/lang/String;
    goto :goto_1
.end method

.method private getRecognitionLocale(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    .locals 5
    .parameter "bcp47Locale"
    .parameter "locales"

    .prologue
    .line 79
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 80
    .local v3, locale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    invoke-virtual {v3}, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->toBcp47Format()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    .end local v3           #locale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    :goto_1
    return-object v3

    .line 79
    .restart local v3       #locale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v3           #locale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    :cond_1
    const/4 v4, 0x0

    aget-object v3, p2, v4

    goto :goto_1
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 118
    return-void
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 122
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    invoke-interface {v3}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;->onDisplayLanguageSelectionPopup()V

    .line 124
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getHumanReadableLanguages()[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;

    invoke-direct {v5, p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;-><init>(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;

    invoke-direct {v4, p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;-><init>(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0805

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 151
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 152
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 153
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 154
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 155
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 156
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 158
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 160
    const/4 v3, 0x1

    return v3
.end method

.method public setCallback(Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    .line 105
    return-void
.end method

.method public setLanguages(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V
    .locals 6
    .parameter "currentBcp47Locale"
    .parameter "locales"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/voicesearch/util/Assert;->assertTrue(Z)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getRecognitionLocale(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCurrentLocale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    .line 72
    iput-object p2, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    .line 73
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000c

    new-array v1, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCurrentLocale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->toHumanReadable()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0
.end method

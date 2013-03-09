.class public Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcBrowserVersionPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c03be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, version:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104031b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, uastring:Ljava/lang/String;
    const-string v5, "AppleWebKit/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, idx:I
    if-ltz v0, :cond_2

    .line 74
    add-int/lit8 v0, v0, 0xc

    .line 75
    const/4 v1, -0x1

    .line 76
    .local v1, idx2:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 77
    const/16 v5, 0x20

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 79
    :cond_0
    if-gez v1, :cond_1

    .line 80
    move v1, v0

    .line 81
    :cond_1
    add-int/lit8 v5, v0, -0x7

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 85
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_2

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, temp:Ljava/lang/String;
    move-object v4, v2

    .line 92
    .end local v1           #idx2:I
    .end local v2           #temp:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

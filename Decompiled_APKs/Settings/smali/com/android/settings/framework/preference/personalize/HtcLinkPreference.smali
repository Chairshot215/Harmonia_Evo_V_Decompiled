.class public Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcLinkPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# instance fields
.field protected mLinkUri:Ljava/lang/String;

.field protected mSummaryResId:I

.field protected mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "uri"
    .parameter "titleId"
    .parameter "summaryId"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p4, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mLinkUri:Ljava/lang/String;

    .line 59
    iput p5, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mTitleResId:I

    .line 60
    iput p6, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mSummaryResId:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->initialize()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;II)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "uri"
    .parameter "titleId"
    .parameter "summaryId"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p3, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mLinkUri:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mTitleResId:I

    .line 48
    iput p5, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mSummaryResId:I

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->initialize()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "titleId"
    .parameter "summaryId"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mLinkUri:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mTitleResId:I

    .line 37
    iput p4, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mSummaryResId:I

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->initialize()V

    .line 39
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->setOrder(I)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mTitleResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->setTitle(I)V

    .line 70
    iget v0, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mSummaryResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->setSummary(I)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 72
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->mLinkUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v3, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_0
.end method

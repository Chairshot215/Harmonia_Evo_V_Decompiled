.class public final Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcFeedbackPreference.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.htc.feedback.REPORT_SETTINGS"

.field private static final KEY:Ljava/lang/String; = "feedback_options"


# instance fields
.field private mAllowAdd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    .line 55
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 92
    const/4 v0, 0x1

    .line 94
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
    .line 99
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->setOrder(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 62
    const-string v6, "feedback_options"

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->setKey(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 67
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 69
    .local v1, feedbackRes:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_error_report_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    .line 73
    :try_start_0
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    if-eqz v4, :cond_1

    .line 74
    const-string v4, "com.htc.feedback"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 80
    const-string v4, "app_name"

    const-string v5, "string"

    const-string v6, "com.htc.feedback"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, titleResId:I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.feedback.REPORT_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->setIntent(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    .end local v3           #titleResId:I
    :goto_2
    return-void

    :cond_2
    move v4, v5

    .line 69
    goto :goto_0

    .line 85
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    goto :goto_2

    .line 76
    :catch_0
    move-exception v4

    goto :goto_1
.end method

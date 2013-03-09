.class public Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcBuildNumberPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcKernelVersionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    const-string v2, "ro.build.description"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, buildNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAppVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ro.build.date.utc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/util/HtcFormatter;->formatDate(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    .local v0, buildDate:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v0           #buildDate:Ljava/lang/CharSequence;
    .end local v1           #buildNumber:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

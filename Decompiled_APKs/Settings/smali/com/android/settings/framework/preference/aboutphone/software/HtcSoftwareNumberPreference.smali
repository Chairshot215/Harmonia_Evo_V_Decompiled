.class public Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcSoftwareNumberPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c04b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, title:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0005:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0362

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

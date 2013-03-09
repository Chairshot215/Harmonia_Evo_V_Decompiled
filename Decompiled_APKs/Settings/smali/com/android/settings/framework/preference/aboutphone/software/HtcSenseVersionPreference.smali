.class public Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcSenseVersionPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDisclosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c012e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, senseVersion:Ljava/lang/String;
    move-object v2, v1

    .line 104
    .end local v1           #senseVersion:Ljava/lang/String;
    .local v2, senseVersion:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 80
    .end local v2           #senseVersion:Ljava/lang/String;
    :cond_0
    const-string v0, "3.6"

    .line 82
    .local v0, SENSE36:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c013b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersionInString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #senseVersion:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 104
    .end local v1           #senseVersion:Ljava/lang/String;
    .restart local v2       #senseVersion:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v2           #senseVersion:Ljava/lang/String;
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c013c

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "3.6"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #senseVersion:Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local v1           #senseVersion:Ljava/lang/String;
    :cond_2
    const-string v1, "3.6"

    .restart local v1       #senseVersion:Ljava/lang/String;
    goto :goto_1
.end method

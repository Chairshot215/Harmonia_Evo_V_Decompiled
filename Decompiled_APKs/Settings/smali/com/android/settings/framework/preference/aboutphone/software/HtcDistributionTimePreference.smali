.class public Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDistributionTimePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 9

    .prologue
    .line 78
    const-string v7, "ro.build.date.utc"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, ro_build_date_utc:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 95
    .local v0, buildDate:Ljava/util/Date;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, currentFormat:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0183

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, distributionTime:Ljava/lang/String;
    return-object v2

    .line 86
    .end local v0           #buildDate:Ljava/util/Date;
    .end local v1           #currentFormat:Ljava/lang/String;
    .end local v2           #distributionTime:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 87
    .local v5, timeValue:J
    new-instance v0, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #buildDate:Ljava/util/Date;
    goto :goto_0

    .line 88
    .end local v0           #buildDate:Ljava/util/Date;
    .end local v5           #timeValue:J
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #buildDate:Ljava/util/Date;
    goto :goto_0
.end method

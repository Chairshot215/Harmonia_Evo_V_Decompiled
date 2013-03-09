.class public abstract Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractTotalSpacePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "TOTAL_SPACE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->initialize()V

    .line 59
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getStorageState()Ljava/lang/String;
.end method

.method protected abstract getStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "TOTAL_SPACE"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->setKey(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->updateSummary()V

    .line 131
    return-void
.end method

.method public updateSummary()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getStorageState()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, status:Ljava/lang/String;
    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v2, "mounted"

    .line 114
    :cond_0
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->getStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, size:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    .end local v1           #size:Ljava/lang/String;
    :goto_0
    return-void

    .line 118
    :cond_1
    const v3, 0x7f0c061c

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;->setSummary(I)V

    goto :goto_0
.end method

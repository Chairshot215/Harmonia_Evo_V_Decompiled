.class public abstract Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractUsedSpacePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "USED_SPACE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->initialize()V

    .line 60
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "Used"

    return-object v0
.end method

.method protected abstract getStorageState()Ljava/lang/String;
.end method

.method protected abstract getStorageUsedSpace(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "USED_SPACE"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->setKey(Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->updateSummary()V

    .line 134
    return-void
.end method

.method public updateSummary()V
    .locals 5

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, status:Ljava/lang/String;
    const-string v1, ""

    .line 112
    .local v1, readOnly:Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v3, "mounted"

    .line 114
    const v4, 0x7f0c0a22

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_0
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->getStorageUsedSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, size:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    .end local v2           #size:Ljava/lang/String;
    :goto_0
    return-void

    .line 121
    :cond_1
    const v4, 0x7f0c061c

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;->setSummary(I)V

    goto :goto_0
.end method

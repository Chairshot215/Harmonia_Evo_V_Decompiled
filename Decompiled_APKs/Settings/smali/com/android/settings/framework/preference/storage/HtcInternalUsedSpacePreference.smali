.class public Lcom/android/settings/framework/preference/storage/HtcInternalUsedSpacePreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;
.source "HtcInternalUsedSpacePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcInternalUsedSpacePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalUsedSpacePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractUsedSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalUsedSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorageUsedSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageTotalSpace(Landroid/content/Context;)J

    move-result-wide v2

    .line 65
    .local v2, total:J
    invoke-static {p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 67
    .local v0, available:J
    sub-long v4, v2, v0

    .line 69
    .local v4, used:J
    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.class public Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;
.source "HtcInternalTotalSpacePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private formatFileSizeInGb(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "size"

    .prologue
    .line 72
    const v0, 0x10400bc

    .line 73
    .local v0, suffix:I
    const v1, 0x10400bf

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x10400bc

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0004:Z

    if-eqz v2, :cond_0

    .line 59
    const-wide/16 v0, 0x8

    .line 60
    .local v0, size:J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;->formatFileSizeInGb(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 67
    :goto_0
    return-object v2

    .line 61
    .end local v0           #size:J
    :cond_0
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v2, :cond_1

    .line 62
    const-wide/16 v0, 0x10

    .line 63
    .restart local v0       #size:J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;->formatFileSizeInGb(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 65
    .end local v0           #size:J
    :cond_1
    invoke-static {p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageTotalSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 67
    .restart local v0       #size:J
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

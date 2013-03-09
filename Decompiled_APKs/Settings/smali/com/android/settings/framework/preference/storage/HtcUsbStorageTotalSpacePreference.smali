.class public Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;
.source "HtcUsbStorageTotalSpacePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "USB_STORAGE_TOTAL_SPACE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractTotalSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

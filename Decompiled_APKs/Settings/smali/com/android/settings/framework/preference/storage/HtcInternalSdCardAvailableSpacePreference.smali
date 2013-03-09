.class public Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractAvailableSpacePreference;
.source "HtcInternalSdCardAvailableSpacePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "INTERNAL_SD_CARD_AVAILABLE_SPACE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractAvailableSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractAvailableSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractAvailableSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

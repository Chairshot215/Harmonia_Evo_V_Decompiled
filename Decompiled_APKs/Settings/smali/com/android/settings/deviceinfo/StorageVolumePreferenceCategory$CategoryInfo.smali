.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryInfo"
.end annotation


# instance fields
.field final mColor:I

.field final mTitle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "title"
    .parameter "color"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    .line 74
    iput p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    .line 75
    return-void
.end method

.class public Lcom/android/mms/location/LocationMapActivity;
.super Landroid/app/Activity;
.source "LocationMapActivity.java"


# static fields
.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "extra_image_path"

.field public static final EXTRA_MAP_URL:Ljava/lang/String; = "extra_map_url"

.field public static final EXTRA_PLACE_BYTES:Ljava/lang/String; = "extra_selected_place"

.field public static final EXTRA_SEARCH_ADDRESS:Ljava/lang/String; = "extra_search_address"

.field public static final EXTRA_STARTUP_FLAG:Ljava/lang/String; = "extra_startup_flag"

.field public static final PIN_NAME_MEDIA:Ljava/lang/String; = "Location Address"

.field public static final STARTUP_MODE_MEDIA:I = 0x5

.field public static final STARTUP_MODE_MY_LOCATION:I = 0x1

.field public static final STARTUP_MODE_NORMAL:I = 0x0

.field public static final STARTUP_MODE_SEARCH_ADDRESS:I = 0x3

.field public static final STARTUP_MODE_SEARCH_POI:I = 0x2

.field public static final STARTUP_MODE_VIEW_ONLY:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

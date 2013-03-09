.class public final Lcom/htc/wrap/android/provider/HtcWrapDownloads$Impl;
.super Ljava/lang/Object;
.source "HtcWrapDownloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field public static final COLUMN_APP_DATA:Ljava/lang/String; = "entity"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final DESTINATION_INTERNAL:I = 0x7

.field public static final RESTRICTION_INTERNET_PASSTHROUGH_ONLY:I = 0x10

.field public static final RESTRICTION_NO_ROAMING:I = 0x2

.field public static final RESTRICTION_USE_APN:I = 0x8

.field public static final RESTRICTION_USE_APN_MASK:I = 0xf0000

.field public static final RESTRICTION_USE_FOTA_APN:I = 0xa0008

.field public static final RESTRICTION_USE_PROXY:I = 0x4

.field public static final RESTRICTION_WIFI_ONLY:I = 0x1

.field public static final STATUS_PENDING_PAUSED:I = 0xbf

.field public static final STATUS_RUNNING_PAUSED:I = 0xc5

.field public static final STATUS_SPECIFY_APN_FAILED:I = 0x1e7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusSuspended(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 168
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuspended(I)Z

    move-result v0

    return v0
.end method

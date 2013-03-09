.class public final Lcom/android/providers/downloads/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_ALL_DOWNLOADS:Ljava/lang/String; = "android.permission.ACCESS_ALL_DOWNLOADS"

.field public static final ACCESS_DOWNLOAD_MANAGER:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER"

.field public static final ACCESS_DOWNLOAD_MANAGER_ADVANCED:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

.field public static final DOWNLOAD_CACHE_NON_PURGEABLE:Ljava/lang/String; = "android.permission.DOWNLOAD_CACHE_NON_PURGEABLE"

.field public static final DOWNLOAD_WITHOUT_NOTIFICATION:Ljava/lang/String; = "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

.field public static final SEND_DOWNLOAD_COMPLETED_INTENTS:Ljava/lang/String; = "android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

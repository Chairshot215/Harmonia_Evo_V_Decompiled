.class public Lcom/android/updater/db/UpdaterProvider$DetailColumns;
.super Ljava/lang/Object;
.source "UpdaterProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/db/UpdaterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailColumns"
.end annotation


# static fields
.field public static final APK_DESC:Ljava/lang/String; = "description"

.field public static final APK_ICON_DOWNLOAD_PATH:Ljava/lang/String; = "icon"

.field public static final APK_NAME:Ljava/lang/String; = "appName"

.field public static final APK_OPTIONAL_COUNT:Ljava/lang/String; = "optionalCount"

.field public static final APK_SIZE:Ljava/lang/String; = "appSize"

.field public static final APK_SOURCE:Ljava/lang/String; = "source"

.field public static final APK_STATUS:Ljava/lang/String; = "ApStatus"

.field public static final APK_VERSION:Ljava/lang/String; = "versionName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

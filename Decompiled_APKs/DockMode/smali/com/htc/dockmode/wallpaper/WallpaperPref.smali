.class public Lcom/htc/dockmode/wallpaper/WallpaperPref;
.super Ljava/lang/Object;
.source "WallpaperPref.java"


# static fields
.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TAG:Ljava/lang/String; = null

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/htc/dockmode/wallpaper/WallpaperPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/wallpaper/WallpaperPref;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

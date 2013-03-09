.class public Lcom/htc/provider/HtcCachedUrlImage;
.super Ljava/lang/Object;
.source "HtcCachedUrlImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcCachedUrlImage$UrlImageColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.providers.urlimage"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "com.htc.permission.ACCESS_CACHED_URL_IMAGE"

.field public static final URL_IMAGE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "content://com.htc.providers.urlimage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCachedUrlImage;->AUTHORITY_URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Lcom/htc/provider/HtcCachedUrlImage;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "url"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCachedUrlImage;->URL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

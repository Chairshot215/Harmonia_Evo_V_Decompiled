.class public interface abstract Lcom/htc/wrap/android/provider/HtcWrapDrmStore$AlbumArt;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlbumArt"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final _DATA:Ljava/lang/String; = "_data"

.field public static final _ID:Ljava/lang/String; = "album_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const-string v0, "content://drm/album_art"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

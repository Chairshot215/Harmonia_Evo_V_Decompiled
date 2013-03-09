.class public interface abstract Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Albums"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY:Ljava/lang/String; = "album_key"

.field public static final _ID:Ljava/lang/String; = "album_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const-string v0, "content://drm/albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

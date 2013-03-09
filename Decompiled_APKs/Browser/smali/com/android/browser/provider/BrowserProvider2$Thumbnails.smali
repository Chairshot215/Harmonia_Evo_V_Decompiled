.class public interface abstract Lcom/android/browser/provider/BrowserProvider2$Thumbnails;
.super Ljava/lang/Object;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Thumbnails"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "thumbnails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2$Thumbnails;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

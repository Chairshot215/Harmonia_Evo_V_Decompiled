.class public interface abstract Lcom/android/browser/provider/SnapshotProvider$Snapshots;
.super Ljava/lang/Object;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/SnapshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Snapshots"
.end annotation


# static fields
.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE_CREATED:Ljava/lang/String; = "date_created"

.field public static final FAVICON:Ljava/lang/String; = "favicon"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VIEWSTATE:Ljava/lang/String; = "view_state"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/android/browser/provider/SnapshotProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "snapshots"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

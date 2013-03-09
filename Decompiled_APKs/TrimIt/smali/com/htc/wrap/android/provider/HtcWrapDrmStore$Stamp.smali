.class public interface abstract Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Stamp"
.end annotation


# static fields
.field public static final CLOCK:Ljava/lang/String; = "clock_stamp"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIFFERENTIAL:Ljava/lang/String; = "time_differential"

.field public static final NETWORK_SYNC:Ljava/lang/String; = "network_sync"

.field public static final TIME:Ljava/lang/String; = "time_stamp"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone_stamp"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const-string v0, "content://drm/stamp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

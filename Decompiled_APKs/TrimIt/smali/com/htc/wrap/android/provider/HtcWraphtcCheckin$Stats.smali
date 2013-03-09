.class public interface abstract Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats;
.super Ljava/lang/Object;
.source "HtcWraphtcCheckin.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final SUM:Ljava/lang/String; = "sum"

.field public static final TABLE_NAME:Ljava/lang/String; = "stats"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "content://android.server.htcCheckin/stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

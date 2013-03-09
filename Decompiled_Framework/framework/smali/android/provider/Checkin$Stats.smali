.class public interface abstract Landroid/provider/Checkin$Stats;
.super Ljava/lang/Object;
.source "Checkin.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Checkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Checkin$Stats$Tag;
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

    const-string v0, "content://android.server.checkin/stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

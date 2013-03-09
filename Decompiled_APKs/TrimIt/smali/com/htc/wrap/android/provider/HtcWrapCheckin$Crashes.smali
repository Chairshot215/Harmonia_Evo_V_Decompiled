.class public interface abstract Lcom/htc/wrap/android/provider/HtcWrapCheckin$Crashes;
.super Ljava/lang/Object;
.source "HtcWrapCheckin.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Crashes"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final LOGS:Ljava/lang/String; = "logs"

.field public static final TABLE_NAME:Ljava/lang/String; = "crashes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "content://android.server.checkin/crashes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLACKLIST_PASSWORD;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLACKLIST_PASSWORD"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final TABLE_NAME:Ljava/lang/String; = "blacklist_password"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1155
    sget-object v0, Landroid/provider/HtcContactsContract$BLACKLIST_PASSWORD;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLACKLIST_PASSWORD;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

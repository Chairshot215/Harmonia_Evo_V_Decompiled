.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Link;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LINK_AUTO_RULE:J = 0x0L

.field public static final LINK_MANUAL_RULE:J = 0x1L

.field public static final LINK_NO_RULE:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 999
    sget-object v0, Landroid/provider/HtcContactsContract$Link;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Link;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

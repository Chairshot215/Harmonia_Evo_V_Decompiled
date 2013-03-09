.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CallLogExt;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CallsExtColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallLogExt"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "calls_ext"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 733
    sget-object v0, Landroid/provider/HtcContactsContract$CallLogExt;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CallLogExt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

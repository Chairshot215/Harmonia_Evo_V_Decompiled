.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLOCKED_NUMBER;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLOCKED_NUMBER"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final TABLE_NAME:Ljava/lang/String; = "blocked_number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1137
    sget-object v0, Landroid/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BALCKLIST"
.end annotation


# static fields
.field public static final BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BLACKLIST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MASK:I = 0x1

.field public static final enableBlacklist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1082
    sget-boolean v0, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;->enableBlacklist:Z

    .line 1086
    sget-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 1091
    sget-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;->BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    .line 1096
    sget-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;->BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

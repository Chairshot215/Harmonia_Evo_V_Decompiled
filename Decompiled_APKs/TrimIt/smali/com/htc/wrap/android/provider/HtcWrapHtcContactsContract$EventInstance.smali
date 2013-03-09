.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstance;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstanceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstance"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NOTIFY_PEOPLE_INDICATOR:I = 0x1

.field public static final NOTIFY_STATUS_BAR:I = 0x0

.field public static final STATUS_READ:I = 0x1

.field public static final STATUS_UNREAD:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "event_instance"

.field public static final WITH_RANGE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    sget-object v0, Landroid/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    .line 455
    sget-object v0, Landroid/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

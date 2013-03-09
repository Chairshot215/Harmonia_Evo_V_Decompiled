.class public final Lcom/htc/provider/HtcContactsContract$EventInstance;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/provider/HtcContactsContract$EventInstanceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
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
    .locals 2

    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "event_instance"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "with_range"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

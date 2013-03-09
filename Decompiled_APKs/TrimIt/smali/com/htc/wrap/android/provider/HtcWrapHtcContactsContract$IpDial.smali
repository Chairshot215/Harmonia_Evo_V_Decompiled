.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$IpDial;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpDial"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "ip_dial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_ip_dial"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_ip_dial"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "location ASC"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IP_DIAL_ID_COLUMN:I = 0x0

.field public static final IP_DIAL_NUMBER_COLUMN:I = 0x1

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final TABLE_NAME:Ljava/lang/String; = "ip_dial"

.field public static final enableIpDial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1247
    sget-boolean v0, Landroid/provider/HtcContactsContract$IpDial;->enableIpDial:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$IpDial;->enableIpDial:Z

    .line 1253
    sget-object v0, Landroid/provider/HtcContactsContract$IpDial;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$IpDial;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    return-void
.end method

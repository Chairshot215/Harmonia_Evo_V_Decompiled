.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$HtcEvent;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtcEvent"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/htc_event_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/htc_event_v2"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_REF_ID:Ljava/lang/String; = "data3"

.field public static final DAY_OF_MONTH:Ljava/lang/String; = "data14"

.field public static final DESCRIPTION:Ljava/lang/String; = "data7"

.field public static final END_TIME:Ljava/lang/String; = "data5"

.field public static final EVENT_DB_ID:Ljava/lang/String; = "data1"

.field public static final IS_ALL_DAY:Ljava/lang/String; = "data11"

.field public static final MONTH:Ljava/lang/String; = "data13"

.field public static final NOTIFICATION_1_DAY:I = 0x2

.field public static final NOTIFICATION_30_DAYS:I = 0x8

.field public static final NOTIFICATION_7_DAYS:I = 0x4

.field public static final NOTIFICATION_NONE:I = 0x1

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "data9"

.field public static final NOT_ALL_DAY:I = 0x0

.field public static final RECURRENCE_DAILY:I = 0x2

.field public static final RECURRENCE_MONTHLY:I = 0x4

.field public static final RECURRENCE_ONCE:I = 0x1

.field public static final RECURRENCE_QUARTERLY:I = 0x5

.field public static final RECURRENCE_TYPE:Ljava/lang/String; = "data8"

.field public static final RECURRENCE_WEEKLY:I = 0x3

.field public static final RECURRENCE_YEARLY:I = 0x6

.field public static final START_TIME:Ljava/lang/String; = "data4"

.field public static final TIMEZONE:Ljava/lang/String; = "data10"

.field public static final TITLE:Ljava/lang/String; = "data6"

.field public static final TYPE:Ljava/lang/String; = "data2"

.field public static final TYPE_ANNIVERSARY:I = 0x2

.field public static final TYPE_BIRTHDAY:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final YEAR:Ljava/lang/String; = "data12"

.field public static final YES_ALL_DAY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Landroid/provider/HtcContactsContract$HtcEvent;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$HtcEvent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 320
    invoke-static {p0}, Landroid/provider/HtcContactsContract$HtcEvent;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

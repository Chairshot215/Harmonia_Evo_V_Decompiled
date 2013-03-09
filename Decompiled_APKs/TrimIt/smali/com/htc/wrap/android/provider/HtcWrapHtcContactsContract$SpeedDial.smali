.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDial;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDialColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_speed_dial"

.field public static final CONTENT_ITEM_TYPE_LOCATION:Ljava/lang/String; = "vnd.android.cursor.item/contact_speed_dial-location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_speed_dial"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LOOKUP:Ljava/lang/String; = "lookup"

#the value of this static final field might be set in the static constructor
.field public static final MAX_NUMBER:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final START_LOCATION:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "speed_dial"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 517
    sget-object v0, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 551
    sget v0, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    sput v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDial;->MAX_NUMBER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

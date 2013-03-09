.class public final Lcom/htc/provider/HtcContactsContract$SpeedDial;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/provider/HtcContactsContract$SpeedDialColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
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

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final KEY_NUMBER_ID:Ljava/lang/String; = "number_id"

.field public static final KEY_RESULT:Ljava/lang/String; = "need_result"

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
    .locals 2

    .prologue
    .line 2540
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "speed_dial"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 2595
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/htc/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

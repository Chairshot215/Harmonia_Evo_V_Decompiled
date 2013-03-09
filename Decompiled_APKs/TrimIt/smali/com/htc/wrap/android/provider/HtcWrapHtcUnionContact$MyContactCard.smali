.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyContactCard"
.end annotation


# static fields
.field public static final ADDRESS_TYPE:I = 0x4

.field public static final ANNIVERSARY_TYPE:I = 0x2

.field public static final BIRTHDAY_TYPE:I = 0x1

.field public static COLUMN_DATA:Ljava/lang/String; = null

.field public static COLUMN_SUBTYPE:Ljava/lang/String; = null

.field public static COLUMN_TYPE:Ljava/lang/String; = null

.field public static final CONTACT_METHOD_TYPE:I = 0x2

.field public static final DATA_COLUMN_INDEX:I = 0x3

.field public static final EVENT_TYPE:I = 0x5

.field public static final HOME_ADDRESS:I = 0x1

.field public static final HOME_TYPE:I = 0x1

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final MOBILE_TYPE:I = 0x2

.field public static final MY_CONTACT_CARD_PROJECTION:[Ljava/lang/String; = null

.field public static final MY_CONTACT_FIRSTNAME:I = 0x1

.field public static final MY_CONTACT_LASTNAME:I = 0x2

.field public static final MY_PHOTO_FILE_NAME:Ljava/lang/String; = "myContactPhoto"

.field public static final NAME_TYPE:I = 0x3

.field public static final PHONE_NUMBER_TYPE:I = 0x1

.field public static final SUBTYPE_COLUMN_INDEX:I = 0x2

.field public static final TYPE_COLUMN_INDEX:I = 0x1

.field public static final WORK_ADDRESS:I = 0x2

.field public static final WORK_TYPE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    sget-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->MY_CONTACT_CARD_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;->MY_CONTACT_CARD_PROJECTION:[Ljava/lang/String;

    .line 337
    sget-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;->COLUMN_TYPE:Ljava/lang/String;

    .line 338
    sget-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_SUBTYPE:Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;->COLUMN_SUBTYPE:Ljava/lang/String;

    .line 339
    sget-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_DATA:Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$MyContactCard;->COLUMN_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

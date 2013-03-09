.class public final Landroid/provider/HtcUnionContact$MyContactCard;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
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
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "subtype"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->MY_CONTACT_CARD_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "type"

    sput-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "subtype"

    sput-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_SUBTYPE:Ljava/lang/String;

    const-string v0, "data"

    sput-object v0, Landroid/provider/HtcUnionContact$MyContactCard;->COLUMN_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

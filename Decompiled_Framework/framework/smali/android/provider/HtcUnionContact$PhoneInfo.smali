.class public final Landroid/provider/HtcUnionContact$PhoneInfo;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneInfo"
.end annotation


# static fields
.field public static final CUSTOM_TYPE:I = 0x0

.field public static final FAX_HOME_TYPE:I = 0x5

.field public static final FAX_WORK_TYPE:I = 0x4

.field public static final HOME_STRING:Ljava/lang/String; = "Home"

.field public static final HOME_TYPE:I = 0x1

.field public static final ID_COLUMN:I = 0x0

.field public static final ISPRIMARY_COLUMN:I = 0x4

.field public static final LABEL_COLUMN:I = 0x3

.field public static final MOBILE_STRING:Ljava/lang/String; = "Mobile"

.field public static final MOBILE_TYPE:I = 0x2

.field public static final NUMBER_COLUMN:I = 0x1

.field public static final OTHER_TYPE:I = 0x7

.field public static final PAGER_TYPE:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SHORT_FAX_STRING:Ljava/lang/String; = "F"

.field public static final SHORT_HOME_STRING:Ljava/lang/String; = "H"

.field public static final SHORT_MOBILE_STRING:Ljava/lang/String; = "M"

.field public static final SHORT_PAGER_STRING:Ljava/lang/String; = "P"

.field public static final SHORT_WORK_STRING:Ljava/lang/String; = "W"

.field public static final TYPE_COLUMN:I = 0x2

.field public static final WORK_STRING:Ljava/lang/String; = "Work"

.field public static final WORK_TYPE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$PhoneInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

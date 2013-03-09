.class public final Landroid/provider/HtcUnionContact$PeopleInfo;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleInfo"
.end annotation


# static fields
.field public static final EXTRA_GROUP_COLUMN:I = 0x7

.field public static final FIRSTNAME_COLUMN:I = 0x3

.field public static final ID_COLUMN:I = 0x0

.field public static final LASTNAME_COLUMN:I = 0x4

.field public static final NAME_COLUMN:I = 0x1

.field public static final NOTE_COLUMN:I = 0x2

.field public static final PERSONAL_RINGTONE_COLUMN:I = 0x5

.field public static final PICASA_URL_COLUMN:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "firstName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "lastName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "picasaUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "extra_group"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$PeopleInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

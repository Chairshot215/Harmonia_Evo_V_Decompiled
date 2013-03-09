.class public final Landroid/provider/HtcUnionContact$AllContacts;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllContacts"
.end annotation


# static fields
.field public static final CONTACTMETHOD_ID_COLUMN_INDEX:I = 0x9

.field public static final CONTACTMETHOD_KIND_COLUMN_INDEX:I = 0xa

.field public static final CONTACT_METHOD_ID:Ljava/lang/String; = "methodId"

.field public static final CONTACT_METHOD_KIND:Ljava/lang/String; = "kind"

.field public static final CONTACT_PHOTO_COLUMN_INDEX:I = 0x7

.field public static final EXTRA_GROUP_COLUMN_INDEX:I = 0x9

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_COLUMN_INDEX:I = 0x3

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_COLUMN_INDEX:I = 0x4

.field public static final NUMBER_INDICATOR:Ljava/lang/String; = "numIndicator"

.field public static final NUMBER_INDICATOR_COLUMN_INDEX:I = 0x6

.field public static final PERSON:Ljava/lang/String; = "person"

.field public static final PERSON_ID_COLUMN_INDEX:I = 0x1

.field public static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final PHONE_ID_COLUMN_INDEX:I = 0x2

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROJECTION_WITH_CONTACTMETHODS:[Ljava/lang/String; = null

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final RECORD_NUMBER_COLUMN_INDEX:I = 0x8

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COLUMN_INDEX:I = 0x5

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "person"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phoneId"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "numIndicator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "recordNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "extra_group"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$AllContacts;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "person"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phoneId"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "numIndicator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "recordNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "methodId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "kind"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$AllContacts;->PROJECTION_WITH_CONTACTMETHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

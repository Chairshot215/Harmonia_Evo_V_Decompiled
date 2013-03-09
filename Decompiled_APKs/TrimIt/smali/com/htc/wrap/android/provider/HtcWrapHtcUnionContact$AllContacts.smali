.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$AllContacts;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
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
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/provider/HtcUnionContact$AllContacts;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$AllContacts;->PROJECTION:[Ljava/lang/String;

    .line 175
    sget-object v0, Landroid/provider/HtcUnionContact$AllContacts;->PROJECTION_WITH_CONTACTMETHODS:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$AllContacts;->PROJECTION_WITH_CONTACTMETHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

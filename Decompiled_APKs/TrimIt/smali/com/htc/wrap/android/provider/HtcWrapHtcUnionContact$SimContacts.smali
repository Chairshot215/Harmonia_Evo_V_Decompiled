.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimContacts"
.end annotation


# static fields
.field public static final ADN_FULL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contacts_sim"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contacts_sim"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EMAIL_ANR_FULL_URI:Landroid/net/Uri; = null

.field public static final ERROR_URI:Landroid/net/Uri; = null

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_COLUMN_INDEX:I = 0x1

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_COLUMN_INDEX:I = 0x2

.field public static final PERSON:Ljava/lang/String; = "person"

.field public static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final REC_NUM_COLUMN_INDEX:I = 0x3

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Landroid/provider/HtcUnionContact$SimContacts;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;->PROJECTION:[Ljava/lang/String;

    .line 208
    sget-object v0, Landroid/provider/HtcUnionContact$SimContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 215
    sget-object v0, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .line 222
    sget-object v0, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    .line 229
    sget-object v0, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

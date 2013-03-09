.class public final Landroid/provider/HtcUnionContact$SmartDialing;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartDialing"
.end annotation


# static fields
.field public static final CALLLOG_NUMBER:Ljava/lang/String; = "callLogNumber"

.field public static final CALLLOG_TYPE:Ljava/lang/String; = "callLogType"

.field public static final CALL_ID_COLUMN_INDEX:I = 0x1

.field public static final CALL_LOG_PHONE_TYPE:Ljava/lang/String; = "callLogPhoneType"

.field public static final CALL_LOG_TYPE_COLUMN_INDEX:I = 0x9

.field public static final CONTACT_PHOTO_COLUMN_INDEX:I = 0xa

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final FREQUENCY:Ljava/lang/String; = "times_contacted"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_CANDIDATE:Ljava/lang/String; = "nameCandidate"

.field public static final NAME_CANDIDATE_COLUMN_INDEX:I = 0xc

.field public static final NAME_COLUMN_INDEX:I = 0x4

.field public static final NAME_PATTERN:Ljava/lang/String; = "name_pattern"

.field public static final NAME_PATTERN_COLUMN_INDEX:I = 0xb

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_CANDIDATE:Ljava/lang/String; = "numberCandidate"

.field public static final NUMBER_CANDIDATE_COLUMN_INDEX:I = 0xd

.field public static final NUMBER_COLUMN_INDEX:I = 0x5

.field public static final NUMBER_INDICATOR:Ljava/lang/String; = "numIndicator"

.field public static final NUMBER_INDICATOR_COLUMN_INDEX:I = 0x8

.field public static final PERSON:Ljava/lang/String; = "person"

.field public static final PERSON_ID_COLUMN_INDEX:I = 0x2

.field public static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final PHONE_ID_COLUMN_INDEX:I = 0x3

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final PURE_NUMBER:Ljava/lang/String; = "pureNumber"

.field public static final PURE_NUMBER_COLUMN_INDEX:I = 0x6

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final RECORD_NUMBER_COLUMN_INDEX:I = 0xe

.field public static final SMART_SEARCH_PROJECTION:[Ljava/lang/String; = null

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COLUMN_INDEX:I = 0x7

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/HtcUnionContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartdilaing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$SmartDialing;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "callId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "personId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "phoneId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "pureNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "numIndicator"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "callLogType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "name_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "nameCandidate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "numberCandidate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "recordNumber"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$SmartDialing;->SMART_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

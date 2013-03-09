.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SmartDialing;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
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
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/provider/HtcUnionContact$SmartDialing;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SmartDialing;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    sget-object v0, Landroid/provider/HtcUnionContact$SmartDialing;->SMART_SEARCH_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SmartDialing;->SMART_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

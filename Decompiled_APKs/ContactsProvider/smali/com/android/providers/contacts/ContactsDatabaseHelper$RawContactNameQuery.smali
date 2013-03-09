.class interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$RawContactNameQuery;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RawContactNameQuery"
.end annotation


# static fields
.field public static final DATA1:I = 0x2

.field public static final FAMILY_NAME:I = 0x4

.field public static final FULL_NAME_STYLE:I = 0xb

.field public static final GIVEN_NAME:I = 0x3

.field public static final IS_PRIMARY:I = 0x1

.field public static final MIDDLE_NAME:I = 0x6

.field public static final MIMETYPE:I = 0x0

.field public static final ORGANIZATION_PHONETIC_NAME:I = 0x9

.field public static final ORGANIZATION_PHONETIC_NAME_STYLE:I = 0xb

.field public static final PHONETIC_FAMILY_NAME:I = 0xa

.field public static final PHONETIC_GIVEN_NAME:I = 0x8

.field public static final PHONETIC_MIDDLE_NAME:I = 0x9

.field public static final PHONETIC_NAME_STYLE:I = 0xc

.field public static final PREFIX:I = 0x5

.field public static final RAW_SQL:Ljava/lang/String; = "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data4 NOT NULL)"

.field public static final SUFFIX:I = 0x7

.field public static final TITLE:I = 0x5

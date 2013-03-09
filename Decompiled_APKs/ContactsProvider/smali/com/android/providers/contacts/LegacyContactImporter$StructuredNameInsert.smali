.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$StructuredNameInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "StructuredNameInsert"
.end annotation


# static fields
.field public static final DISPLAY_NAME:I = 0x3

.field public static final FAMILY_NAME:I = 0x7

.field public static final FULL_NAME_STYLE:I = 0x9

.field public static final GIVEN_NAME:I = 0x5

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field public static final MIDDLE_NAME:I = 0x6

.field public static final MIMETYPE_ID:I = 0x2

.field public static final PHONETIC_FAMILY_NAME:I = 0xa

.field public static final PHONETIC_GIVEN_NAME:I = 0xc

.field public static final PHONETIC_MIDDLE_NAME:I = 0xb

.field public static final PHONETIC_NAME_STYLE:I = 0xd

.field public static final PREFIX:I = 0x4

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final SUFFIX:I = 0x8

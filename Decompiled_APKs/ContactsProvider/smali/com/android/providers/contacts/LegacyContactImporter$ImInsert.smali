.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$ImInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ImInsert"
.end annotation


# static fields
.field public static final AUX_DATA:I = 0x8

.field public static final DATA:I = 0x5

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

.field public static final IS_PRIMARY:I = 0x3

.field public static final IS_SUPER_PRIMARY:I = 0x4

.field public static final LABEL:I = 0x7

.field public static final MIMETYPE_ID:I = 0x2

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final TYPE:I = 0x6

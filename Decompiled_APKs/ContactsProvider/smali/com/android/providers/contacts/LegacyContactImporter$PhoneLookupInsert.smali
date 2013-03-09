.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PhoneLookupInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhoneLookupInsert"
.end annotation


# static fields
.field public static final DATA_ID:I = 0x2

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

.field public static final MIN_MATCH:I = 0x4

.field public static final NORMALIZED_NUMBER:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x1

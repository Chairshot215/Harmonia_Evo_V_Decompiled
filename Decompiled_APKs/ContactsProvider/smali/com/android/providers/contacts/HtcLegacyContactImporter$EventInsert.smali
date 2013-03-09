.class public interface abstract Lcom/android/providers/contacts/HtcLegacyContactImporter$EventInsert;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EventInsert"
.end annotation


# static fields
.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO data(raw_contact_id,mimetype_id,data1,data2) VALUES (?,?,?,?)"

.field public static final MIMETYPE_ID:I = 0x2

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final START_DATE:I = 0x3

.field public static final TYPE:I = 0x4

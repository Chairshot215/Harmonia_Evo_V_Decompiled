.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PhotoInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhotoInsert"
.end annotation


# static fields
.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO data(raw_contact_id,mimetype_id,data15,data_sync1) VALUES (?,?,?,?)"

.field public static final MIMETYPE_ID:I = 0x2

.field public static final PHOTO:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final SYNC1:I = 0x4

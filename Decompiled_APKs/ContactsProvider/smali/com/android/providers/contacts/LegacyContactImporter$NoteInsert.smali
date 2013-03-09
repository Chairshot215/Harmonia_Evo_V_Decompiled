.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$NoteInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NoteInsert"
.end annotation


# static fields
.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

.field public static final MIMETYPE_ID:I = 0x2

.field public static final NOTE:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x1

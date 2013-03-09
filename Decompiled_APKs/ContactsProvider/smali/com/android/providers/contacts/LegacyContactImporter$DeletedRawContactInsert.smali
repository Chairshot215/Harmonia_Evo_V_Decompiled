.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$DeletedRawContactInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "DeletedRawContactInsert"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x1

.field public static final ACCOUNT_TYPE:I = 0x2

.field public static final AGGREGATION_MODE:I = 0x5

.field public static final DELETED:I = 0x4

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO raw_contacts(account_name,account_type,sourceid,deleted,aggregation_mode) VALUES (?,?,?,?,?)"

.field public static final SOURCE_ID:I = 0x3

.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$GroupsInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "GroupsInsert"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x7

.field public static final ACCOUNT_TYPE:I = 0x8

.field public static final DIRTY:I = 0x5

.field public static final GROUP_VISIBLE:I = 0x6

.field public static final ID:I = 0x1

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO groups(_id,title,notes,system_id,dirty,group_visible,account_name,account_type,sourceid) VALUES (?,?,?,?,?,?,?,?,?)"

.field public static final NOTES:I = 0x3

.field public static final SOURCE_ID:I = 0x9

.field public static final SYSTEM_ID:I = 0x4

.field public static final TITLE:I = 0x2

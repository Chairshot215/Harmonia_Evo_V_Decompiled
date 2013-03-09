.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Joins;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Joins"
.end annotation


# static fields
.field public static final GROUP_MEMBER_COUNT:Ljava/lang/String; = " LEFT OUTER JOIN (SELECT data.data1 AS member_count_group_id, COUNT(data.raw_contact_id) AS group_member_count FROM data WHERE data.mimetype_id = (SELECT _id FROM mimetypes WHERE mimetypes.mimetype = \'vnd.android.cursor.item/group_membership\')GROUP BY member_count_group_id) AS member_count_table ON (groups._id = member_count_table.member_count_group_id)"

.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Clauses;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Clauses"
.end annotation


# static fields
.field public static final CONTACT_IS_VISIBLE:Ljava/lang/String; = "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id"

.field public static final CONTACT_IS_VISIBLE_FOR_SPECFIC_CONTACT:Ljava/lang/String; = "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id= ? AND contact_id=contacts._id GROUP BY contact_id"

.field public static final CONTACT_IS_VISIBLE_FOR_SPECFIC_CONTACT_2:Ljava/lang/String; = "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id= ?  GROUP BY contact_id"

.field public static final CONTACT_VISIBLE:Ljava/lang/String; = "EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id)"

.field public static final GROUP_BY_ACCOUNT_CONTACT_ID:Ljava/lang/String; = "settings.account_name,settings.account_type,contact_id"

.field public static final GROUP_HAS_ACCOUNT_AND_DATA_SET_AND_SOURCE_ID:Ljava/lang/String; = "sourceid=? AND account_name=? AND account_type=? AND data_set=?"

.field public static final GROUP_HAS_ACCOUNT_AND_SOURCE_ID:Ljava/lang/String; = "sourceid=? AND account_name=? AND account_type=? AND data_set IS NULL"

.field public static final HAVING_NO_GROUPS:Ljava/lang/String; = "COUNT(data.data1) == 0"

.field public static final OUTER_RAW_CONTACTS:Ljava/lang/String; = "outer_raw_contacts"

.field public static final OUTER_RAW_CONTACTS_ID:Ljava/lang/String; = "outer_raw_contacts._id"

.field public static final RAW_CONTACT_IS_LOCAL:Ljava/lang/String; = "raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL"

.field public static final ZERO_GROUP_MEMBERSHIPS:Ljava/lang/String; = "COUNT(groups._id)=0"

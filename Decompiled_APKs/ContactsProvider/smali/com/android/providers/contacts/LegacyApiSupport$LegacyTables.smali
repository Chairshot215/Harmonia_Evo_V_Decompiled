.class public interface abstract Lcom/android/providers/contacts/LegacyApiSupport$LegacyTables;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyApiSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LegacyTables"
.end annotation


# static fields
.field public static final CONTACT_METHODS:Ljava/lang/String; = "view_v1_contact_methods"

.field public static final EXTENSIONS:Ljava/lang/String; = "view_v1_extensions"

.field public static final GROUPS:Ljava/lang/String; = "view_v1_groups"

.field public static final GROUP_MEMBERSHIP:Ljava/lang/String; = "view_v1_group_membership"

.field public static final ORGANIZATIONS:Ljava/lang/String; = "view_v1_organizations"

.field public static final PEOPLE:Ljava/lang/String; = "view_v1_people"

.field public static final PEOPLE_JOIN_PRESENCE:Ljava/lang/String; = "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

.field public static final PHONES:Ljava/lang/String; = "view_v1_phones"

.field public static final PHOTOS:Ljava/lang/String; = "view_v1_photos"

.field public static final SETTINGS:Ljava/lang/String; = "v1_settings"

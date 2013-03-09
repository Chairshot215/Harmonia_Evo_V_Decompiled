.class public final Lcom/htc/provider/HtcContactsContract$Contacts;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;
    }
.end annotation


# static fields
.field public static final ACCOUNT_AGGREGATED:Ljava/lang/String; = "account_aggregated"

.field public static final ACCOUNT_COUNT:Ljava/lang/String; = "account_count"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final CLAUSE_INCLUDE_MY_CONTACT_CARD:Ljava/lang/String; = "(account_name=\'HTC\' AND account_type=\'DeviceOnly\' AND sourceid=\'HTC_01\')"

.field private static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number=1"

.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field public static final CONTACT_QUERY_PARAMETER_EXCLUDE_SIM:Ljava/lang/String; = "excludeSIM"

.field public static final CONTACT_QUERY_PARAMETER_ONLY_PHONE:Ljava/lang/String; = "onlyPhone"

.field public static final CONTACT_QUERY_PARAMETER_ONLY_WRATABLE_CONTACT:Ljava/lang/String; = "excludeReadOnly"

.field public static CONTENT_FAVORITE_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_ACTION:Ljava/lang/String; = "default_action"

.field public static final EXCLUDE_FLICKR_CONTACT:Ljava/lang/String; = null

.field public static final EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String; = null

.field public static final EXCLUDE_MY_CONTACT_CARD_RAW:Ljava/lang/String; = null

.field public static final EXT_ACCOUNT_NAME:Ljava/lang/String; = "ext_account_name"

.field public static final EXT_ACCOUNT_TYPE:Ljava/lang/String; = "ext_account_Type"

.field public static final EXT_PHOTO_URL:Ljava/lang/String; = "ext_photo_url"

.field public static GROUP_CONTACT_URI:Landroid/net/Uri; = null

.field public static final GRUOP_FAVORITE_URI:Landroid/net/Uri; = null

.field public static final INCLUDE_SIM_CONTACT_PARAMETER:Ljava/lang/String; = "IncludeSIM"

.field public static final INCLUDE_SIM_CONTACT_VALUE:Ljava/lang/String; = "true"

.field public static ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri; = null

.field public static final SIMPLE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceid"

.field public static final STATUS_UPDATE_ID:Ljava/lang/String; = "status_update_id"

.field public static UPDATE_FAVORITE_URI:Landroid/net/Uri; = null

.field public static final VIP:Ljava/lang/String; = "vip"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 248
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 253
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts/simple/list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 258
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "favorite"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_FAVORITE_URI:Landroid/net/Uri;

    .line 263
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_FAVORITE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 268
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "order_group_favorite_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 273
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_with_favorite"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->GRUOP_FAVORITE_URI:Landroid/net/Uri;

    .line 274
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_with_favorite"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( ext_account_Type <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceOnly"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( ext_account_Type <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_FLICKR_CONTACT:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( account_type <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceOnly"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD_RAW:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addClauseOnlyPhones(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "whereClause"

    .prologue
    .line 465
    const-string v0, ""

    .line 466
    .local v0, newClause:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v0, "has_phone_number=1"

    .line 472
    :goto_0
    return-object v0

    .line 470
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_phone_number=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "whereClause"

    .prologue
    .line 448
    const-string v0, ""

    .line 449
    .local v0, newClause:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string v0, "in_visible_group=1"

    .line 455
    :goto_0
    return-object v0

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in_visible_group=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeleteContactUri(JZLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 1
    .parameter "contactId"
    .parameter "isSIM"
    .parameter "resolver"

    .prologue
    .line 413
    if-eqz p2, :cond_0

    .line 414
    invoke-static {p0, p1, p3}, Lcom/htc/provider/IccContract;->getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;
    .locals 4
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSIM"

    .prologue
    .line 491
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 492
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 497
    .local v1, uriLookup:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    if-eqz p3, :cond_0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 505
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 508
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uriLookup:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final includeMyContactClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "whereClause"

    .prologue
    .line 428
    const-string v1, ""

    .line 429
    .local v1, newClause:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( ext_account_Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceOnly"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, CLAUSE_INCLUDE:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    move-object v1, v0

    .line 438
    :goto_0
    return-object v1

    .line 436
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final setRingtoneToContact(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7
    .parameter "resolver"
    .parameter "contactUri"
    .parameter "ringtone"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 476
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 477
    .local v0, id:J
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 478
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 479
    .local v3, value:Landroid/content/ContentValues;
    const-string v5, "custom_ringtone"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

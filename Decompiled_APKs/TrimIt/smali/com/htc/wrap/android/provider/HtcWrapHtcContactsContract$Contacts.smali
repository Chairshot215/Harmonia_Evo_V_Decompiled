.class public Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Contacts;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation


# static fields
.field public static final ACCOUNT_AGGREGATED:Ljava/lang/String; = "account_aggregated"

.field public static final ACCOUNT_COUNT:Ljava/lang/String; = "account_count"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_ACTION:Ljava/lang/String; = "default_action"

.field public static final EXT_ACCOUNT_TYPE:Ljava/lang/String; = "ext_account_Type"

.field public static final EXT_PHOTO_URL:Ljava/lang/String; = "ext_photo_url"

.field public static final GRUOP_FAVORITE_URI:Landroid/net/Uri; = null

.field public static final INCLUDE_SIM_CONTACT_PARAMETER:Ljava/lang/String; = "IncludeSIM"

.field public static final INCLUDE_SIM_CONTACT_VALUE:Ljava/lang/String; = "true"

.field public static final SIMPLE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceid"

.field public static final STATUS_UPDATE_ID:Ljava/lang/String; = "status_update_id"

.field public static final VIP:Ljava/lang/String; = "vip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 116
    sget-object v0, Landroid/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 131
    sget-object v0, Landroid/provider/HtcContactsContract$Contacts;->GRUOP_FAVORITE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Contacts;->GRUOP_FAVORITE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addClauseOnlyPhones(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "whereClause"

    .prologue
    .line 159
    invoke-static {p0}, Landroid/provider/HtcContactsContract$Contacts;->addClauseOnlyPhones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "whereClause"

    .prologue
    .line 149
    invoke-static {p0}, Landroid/provider/HtcContactsContract$Contacts;->addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;
    .locals 1
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSIM"

    .prologue
    .line 174
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcContactsContract$Contacts;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final includeMyContactClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "whereClause"

    .prologue
    .line 139
    invoke-static {p0}, Landroid/provider/HtcContactsContract$Contacts;->includeMyContactClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setRingtoneToContact(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "contactUri"
    .parameter "ringtone"

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$Contacts;->setRingtoneToContact(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

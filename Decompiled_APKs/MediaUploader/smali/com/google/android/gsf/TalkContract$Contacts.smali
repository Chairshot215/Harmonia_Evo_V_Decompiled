.class public final Lcom/google/android/gsf/TalkContract$Contacts;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$ContactsColumns;
.implements Lcom/google/android/gsf/TalkContract$PresenceColumns;
.implements Lcom/google/android/gsf/TalkContract$ChatsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final AVATAR_DATA:Ljava/lang/String; = "avatars_data"

.field public static final AVATAR_HASH:Ljava/lang/String; = "avatars_hash"

.field public static final CHATS_CONTACT:Ljava/lang/String; = "chats_contact"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-contacts"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-contacts"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "subscriptionType DESC, last_message_date DESC, mode DESC, nickname COLLATE UNICODE ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 529
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 535
    const-string v0, "content://com.google.android.providers.talk/contactsWithPresence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri;

    .line 541
    const-string v0, "content://com.google.android.providers.talk/contactsBarebone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    .line 547
    const-string v0, "content://com.google.android.providers.talk/contacts_chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 553
    const-string v0, "content://com.google.android.providers.talk/contacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    .line 559
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BY:Landroid/net/Uri;

    .line 566
    const-string v0, "content://com.google.android.providers.talk/contacts/chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri;

    .line 573
    const-string v0, "content://com.google.android.providers.talk/contacts/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 580
    const-string v0, "content://com.google.android.providers.talk/contacts/offline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 587
    const-string v0, "content://com.google.android.providers.talk/contacts/onlineCount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

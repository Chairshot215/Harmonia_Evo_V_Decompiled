.class public final Lcom/google/android/gsf/TalkContract$Messages;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$MessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-messages"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-messages"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_MESSAGES_BY_PROVIDER:Landroid/net/Uri; = null

.field public static final CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"

.field public static final OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_PROVIDER:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 960
    const-string v0, "content://com.google.android.providers.talk/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    .line 966
    const-string v0, "content://com.google.android.providers.talk/messagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

    .line 972
    const-string v0, "content://com.google.android.providers.talk/messagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 978
    const-string v0, "content://com.google.android.providers.talk/messagesByProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_PROVIDER:Landroid/net/Uri;

    .line 984
    const-string v0, "content://com.google.android.providers.talk/messagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    .line 990
    const-string v0, "content://com.google.android.providers.talk/otrMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 996
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;

    .line 1002
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 1008
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_PROVIDER:Landroid/net/Uri;

    .line 1014
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUriByAccount(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 900
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 901
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 902
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 875
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 876
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 877
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 878
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUriByProvider(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 888
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_PROVIDER:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 889
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 890
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUriByThreadId(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 860
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 861
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 862
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getOtrMessagesContentUriByAccount(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 952
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 953
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 954
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getOtrMessagesContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 927
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 928
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 929
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 930
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getOtrMessagesContentUriByProvider(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 940
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_PROVIDER:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 941
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 942
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getOtrMessagesContentUriByThreadId(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 912
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 913
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 914
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

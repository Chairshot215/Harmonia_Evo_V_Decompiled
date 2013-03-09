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
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

.field public static final CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    const-string v0, "content://com.google.android.providers.talk/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    .line 813
    const-string v0, "content://com.google.android.providers.talk/messagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

    .line 819
    const-string v0, "content://com.google.android.providers.talk/messagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 825
    const-string v0, "content://com.google.android.providers.talk/messagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    .line 831
    const-string v0, "content://com.google.android.providers.talk/otrMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 837
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;

    .line 843
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 849
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/google/android/gsf/TalkContract$Contacts;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACT_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 413
    const-string v0, "content://com.google.android.providers.talk/contacts_barebone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    .line 419
    const-string v0, "content://com.google.android.providers.talk/contacts_chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 425
    const-string v0, "content://com.google.android.providers.talk/contacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    .line 431
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACT_ID:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

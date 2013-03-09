.class public Lcom/google/android/gsf/TalkContract;
.super Ljava/lang/Object;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;,
        Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIdsColumn;,
        Lcom/google/android/gsf/TalkContract$LastRmqId;,
        Lcom/google/android/gsf/TalkContract$LastRmqIdColumns;,
        Lcom/google/android/gsf/TalkContract$OutgoingRmq;,
        Lcom/google/android/gsf/TalkContract$OutgoingRmqColumns;,
        Lcom/google/android/gsf/TalkContract$ProviderSettings;,
        Lcom/google/android/gsf/TalkContract$ProviderSettingsColumns;,
        Lcom/google/android/gsf/TalkContract$Chats;,
        Lcom/google/android/gsf/TalkContract$ChatsColumns;,
        Lcom/google/android/gsf/TalkContract$Presence;,
        Lcom/google/android/gsf/TalkContract$PresenceColumns;,
        Lcom/google/android/gsf/TalkContract$CommonPresenceColumns;,
        Lcom/google/android/gsf/TalkContract$Avatars;,
        Lcom/google/android/gsf/TalkContract$AvatarsColumns;,
        Lcom/google/android/gsf/TalkContract$Invitation;,
        Lcom/google/android/gsf/TalkContract$InvitationColumns;,
        Lcom/google/android/gsf/TalkContract$GroupMembers;,
        Lcom/google/android/gsf/TalkContract$GroupMemberColumns;,
        Lcom/google/android/gsf/TalkContract$Messages;,
        Lcom/google/android/gsf/TalkContract$MessageColumns;,
        Lcom/google/android/gsf/TalkContract$MessageType;,
        Lcom/google/android/gsf/TalkContract$ContactsEtag;,
        Lcom/google/android/gsf/TalkContract$ContactsEtagColumns;,
        Lcom/google/android/gsf/TalkContract$Contacts;,
        Lcom/google/android/gsf/TalkContract$OffTheRecordType;,
        Lcom/google/android/gsf/TalkContract$ContactsColumns;,
        Lcom/google/android/gsf/TalkContract$AccountStatus;,
        Lcom/google/android/gsf/TalkContract$AccountStatusColumns;,
        Lcom/google/android/gsf/TalkContract$ConnectionStatus;,
        Lcom/google/android/gsf/TalkContract$Account;,
        Lcom/google/android/gsf/TalkContract$AccountColumns;,
        Lcom/google/android/gsf/TalkContract$Provider;,
        Lcom/google/android/gsf/TalkContract$ProviderNames;,
        Lcom/google/android/gsf/TalkContract$ProviderColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.android.providers.talk"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.google.android.providers.talk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/google/android/gsf/TalkContract;
.super Ljava/lang/Object;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/TalkContract$AccountSettings;,
        Lcom/google/android/gsf/TalkContract$Chats;,
        Lcom/google/android/gsf/TalkContract$Avatars;,
        Lcom/google/android/gsf/TalkContract$Messages;,
        Lcom/google/android/gsf/TalkContract$Contacts;,
        Lcom/google/android/gsf/TalkContract$AccountStatus;,
        Lcom/google/android/gsf/TalkContract$Account;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.google.android.providers.talk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

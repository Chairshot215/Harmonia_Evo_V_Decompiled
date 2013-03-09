.class public final Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcFriendStreamUpdatePreference.java"


# static fields
.field private static final DEFAULT_VALUE:Z = true

.field private static final DESKDOCK_FRIEND_STREAM_UPDATE:Ljava/lang/String; = "deskdock_friend_stream_update"

.field public static final KEY:Ljava/lang/String; = "FRIEND_STREAM_UPDATE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->initialize(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->initialize(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "FRIEND_STREAM_UPDATE"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->setKey(Ljava/lang/String;)V

    .line 64
    :cond_0
    const v1, 0x7f0c00de

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->setTitle(I)V

    .line 65
    const v1, 0x7f0c00df

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->setSummary(I)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->setPersistent(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_friend_stream_update"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->setChecked(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_friend_stream_update"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 85
    return-void
.end method

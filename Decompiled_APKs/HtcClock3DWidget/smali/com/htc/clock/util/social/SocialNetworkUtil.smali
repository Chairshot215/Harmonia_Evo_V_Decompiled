.class public Lcom/htc/clock/util/social/SocialNetworkUtil;
.super Ljava/lang/Object;
.source "SocialNetworkUtil.java"


# static fields
.field static ACTION_PLUGIN_COMPOSE_MESSAGE:Ljava/lang/String;

.field static CLASS_FRIENDSTREAM_AP:Ljava/lang/String;

.field static CLASS_FRIENDSTREAM_ENTRANCE:Ljava/lang/String;

.field static CLASS_FRIENDSTREAM_SETTINGS:Ljava/lang/String;

.field static CLASS_TABLET_FRIENDSTREAM_AP:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field static EXTRA_SETTINGS_PAGE:Ljava/lang/String;

.field static FEATURE_NAME_FRIENDSTREAM_ADAPTER:Ljava/lang/String;

.field static METADATA_PLUGIN_ACCOUNT_TYPE:Ljava/lang/String;

.field static PKG_FRIENDSTREAM_AP:Ljava/lang/String;

.field static PREF_SCREEN_KEY_ACCOUNTS_AND_SYNC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "com.htc.friendstream.intent.action.COMPOSE_MESSAGE"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->ACTION_PLUGIN_COMPOSE_MESSAGE:Ljava/lang/String;

    .line 20
    const-string v0, "com.htc.friendstream.intent.metadata.ACCOUNT_TYPE"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->METADATA_PLUGIN_ACCOUNT_TYPE:Ljava/lang/String;

    .line 21
    const-string v0, "AddFriendStreamAdapter"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->FEATURE_NAME_FRIENDSTREAM_ADAPTER:Ljava/lang/String;

    .line 22
    const-string v0, "com.htc.friendstream"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->PKG_FRIENDSTREAM_AP:Ljava/lang/String;

    .line 23
    const-string v0, "com.htc.friendstream.FriendStream"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_AP:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.friendstream.settings.AddAccountActivity"

    :goto_0
    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_SETTINGS:Ljava/lang/String;

    .line 25
    const-string v0, "com.htc.friendstream.intent.EXTRA_SETTINGS_PAGE"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->EXTRA_SETTINGS_PAGE:Ljava/lang/String;

    .line 26
    const-string v0, "prefscreen_accounts"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->PREF_SCREEN_KEY_ACCOUNTS_AND_SYNC:Ljava/lang/String;

    .line 27
    const-string v0, "com.htc.friendstream.SwitchMultipleActivityMain"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_TABLET_FRIENDSTREAM_AP:Ljava/lang/String;

    .line 28
    const-string v0, "com.htc.friendstream.FriendStream"

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_ENTRANCE:Ljava/lang/String;

    .line 30
    const-string v0, "content://com.htc.friendstream.provider.FriendStreamProvider/status_login"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 24
    :cond_0
    const-string v0, "com.htc.friendstream.SettingsActivity"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggedIn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    .local v8, isLoggedIn:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    .local v0, crs:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 38
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/clock/util/social/SocialNetworkUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 39
    if-eqz v6, :cond_3

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 41
    const-string v1, "SocialNetworkUtil isLogin : true"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 42
    const/4 v8, 0x1

    .line 59
    .end local v8           #isLoggedIn:Z
    if-eqz v6, :cond_0

    .line 60
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_0
    :goto_0
    return v8

    .line 63
    :catch_0
    move-exception v7

    .line 64
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #isLoggedIn:Z
    :cond_1
    if-eqz v6, :cond_2

    .line 60
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    move v8, v9

    .line 67
    goto :goto_0

    .line 63
    :catch_1
    move-exception v7

    .line 64
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v1, "SocialNetworkUtil : cursor is null"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    if-eqz v6, :cond_4

    .line 60
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_2
    move v8, v9

    .line 67
    goto :goto_0

    .line 63
    :catch_2
    move-exception v7

    .line 64
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 52
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 53
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :cond_5
    if-eqz v6, :cond_0

    .line 60
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 63
    :catch_4
    move-exception v7

    .line 64
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 59
    if-eqz v6, :cond_6

    .line 60
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 67
    :cond_6
    :goto_3
    throw v1

    .line 63
    :catch_5
    move-exception v7

    .line 64
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static launchLoginPage(Landroid/content/Context;)V
    .locals 4
    .parameter "hostActivity"

    .prologue
    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/htc/clock/util/social/SocialNetworkUtil;->PKG_FRIENDSTREAM_AP:Ljava/lang/String;

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/htc/clock/util/social/SocialNetworkUtil;->EXTRA_SETTINGS_PAGE:Ljava/lang/String;

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkUtil;->PREF_SCREEN_KEY_ACCOUNTS_AND_SYNC:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public static launchMainPage(Landroid/content/Context;)V
    .locals 4
    .parameter "hostActivity"

    .prologue
    .line 81
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v2, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/clock/util/social/SocialNetworkUtil;->PKG_FRIENDSTREAM_AP:Ljava/lang/String;

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_TABLET_FRIENDSTREAM_AP:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v1, left:Landroid/content/Intent;
    sget-object v2, Lcom/htc/clock/util/social/SocialNetworkUtil;->PKG_FRIENDSTREAM_AP:Ljava/lang/String;

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_ENTRANCE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "com.htc.opensense.ACTIVITY_LEFT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v1           #left:Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/clock/util/social/SocialNetworkUtil;->PKG_FRIENDSTREAM_AP:Ljava/lang/String;

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkUtil;->CLASS_FRIENDSTREAM_AP:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

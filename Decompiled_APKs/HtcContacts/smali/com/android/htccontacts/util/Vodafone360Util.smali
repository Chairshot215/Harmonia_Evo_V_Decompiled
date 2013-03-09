.class public Lcom/android/htccontacts/util/Vodafone360Util;
.super Ljava/lang/Object;
.source "Vodafone360Util.java"


# static fields
.field public static final DISPLAY_360:Ljava/lang/String; = "Vodafone 360"

.field public static final DISPLAY_FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final DISPLAY_GOOGLE:Ljava/lang/String; = "Google"

.field public static final DISPLAY_HYVES:Ljava/lang/String; = "Hyves"

.field public static final DISPLAY_MSN:Ljava/lang/String; = "Windows Live Messenger"

.field private static final SOURCE_360:Ljava/lang/String; = "nowplus"

.field private static final SOURCE_FACEBOOK:Ljava/lang/String; = "facebook.com"

.field private static final SOURCE_GOOGLE:Ljava/lang/String; = "google"

.field private static final SOURCE_HYVES:Ljava/lang/String; = "hyves.nl"

.field private static final SOURCE_MSN:Ljava/lang/String; = "microsoft"

.field private static final TAG:Ljava/lang/String; = "Vodafone360Util"

.field private static mForceEnable360:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/util/Vodafone360Util;->mForceEnable360:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get360AccountType(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 91
    if-nez p1, :cond_1

    const-string v2, "Vodafone 360"

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    const-string v3, "column_subtype_360"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, columnIndex:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-string v2, "Vodafone 360"

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, subtype:Ljava/lang/String;
    const-string v3, "Vodafone360Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get360AccountType: subtype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v1, :cond_3

    .line 99
    invoke-static {v1, p0}, Lcom/android/htccontacts/util/Vodafone360Util;->getSrcDisplayName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, subtype_displayname:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 104
    .end local v2           #subtype_displayname:Ljava/lang/String;
    :cond_3
    const-string v2, "Vodafone 360"

    goto :goto_0
.end method

.method public static getLoginAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 54
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 55
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 57
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 59
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSrcDisplayName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "sourceName"
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "facebook.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "Facebook"

    .line 47
    :goto_0
    return-object v1

    .line 34
    :cond_0
    const-string v1, "nowplus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "Vodafone 360"

    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string v1, "Google"

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "hyves.nl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    const-string v1, "Hyves"

    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "microsoft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    const-string v1, "Windows Live Messenger"

    goto :goto_0

    .line 47
    :cond_4
    const v1, 0x7f0a0100

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 63
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 64
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is360Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 74
    sget-boolean v1, Lcom/android/htccontacts/util/Vodafone360Util;->mForceEnable360:Z

    if-ne v0, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-eq v1, v0, :cond_0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is360PcscSyncEnabled()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static isShowHide360BrandingEnabled()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public static showing360Brand(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->isShowHide360BrandingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.vodafone.people"

    invoke-static {p0, v2}, Lcom/android/htccontacts/util/Vodafone360Util;->is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 122
    goto :goto_0
.end method

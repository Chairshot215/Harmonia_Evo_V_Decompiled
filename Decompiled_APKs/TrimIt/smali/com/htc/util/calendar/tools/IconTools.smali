.class public Lcom/htc/util/calendar/tools/IconTools;
.super Ljava/lang/Object;
.source "IconTools.java"


# static fields
.field public static final ACCOUNT_NAME_EXCHANGE:Ljava/lang/String; = "Exchange"

.field public static final ACCOUNT_NAME_FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final ACCOUNT_NAME_GOOGLE:Ljava/lang/String; = "Google"

.field public static final ACCOUNT_NAME_PCSYNC:Ljava/lang/String; = "PC Sync"

.field public static final PACKAGE_NAME_PCSC:Ljava/lang/String; = "com.htc.android.psclient"

.field private static final TAG:Ljava/lang/String; = "IconTools"

.field private static mCachedIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAppNameByAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 109
    const-string v0, ""

    .line 110
    .local v0, appName:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v0, "PC Sync"

    .line 113
    :cond_0
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v0, "Exchange"

    .line 116
    :cond_1
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v0, "Google"

    .line 119
    :cond_2
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const-string v0, "Facebook"

    .line 122
    :cond_3
    return-object v0
.end method

.method private static getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "IconTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTypeIconByAccountType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 47
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTypeIconByAccountType accountType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    .line 105
    :goto_0
    return-object v6

    .line 53
    :cond_0
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 54
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    .line 56
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 57
    .local v1, authDescs:[Landroid/accounts/AuthenticatorDescription;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v1

    if-ge v5, v8, :cond_2

    .line 58
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v9, v1, v5

    iget-object v9, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v10, v1, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    .end local v1           #authDescs:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #i:I
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 63
    .local v2, currAuthDescs:[Landroid/accounts/AuthenticatorDescription;
    array-length v8, v2

    sget-object v9, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 65
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 68
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 69
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v9, v2, v5

    iget-object v9, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v10, v2, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 74
    .end local v2           #currAuthDescs:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #i:I
    :cond_2
    const/4 v6, 0x0

    .line 75
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 78
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 80
    const-string v8, "com.htc.android.psclient"

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 81
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_3
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    :try_start_0
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    .line 88
    .local v3, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v8, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/htc/util/calendar/tools/IconTools;->createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 99
    .end local v0           #authContext:Landroid/content/Context;
    .end local v3           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_0

    .line 90
    :catch_0
    move-exception v4

    .line 91
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No icon for account type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 94
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    throw v8

    .line 92
    :catch_1
    move-exception v4

    .line 93
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Icon resource not found for account type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 103
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_5
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

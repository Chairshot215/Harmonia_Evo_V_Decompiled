.class public final Lcom/google/android/partnersetup/AppHider;
.super Ljava/lang/Object;
.source "AppHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/AppHider$1;,
        Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private static extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "enabledString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 343
    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 345
    :cond_0
    const-string v0, "disabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad enabled/disabled in clause \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v0
.end method

.method private static extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "minVersionString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric minVersion in clause \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v1
.end method

.method private static gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "gserviceKey"
    .parameter "gserviceValue"

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gservice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 8
    .parameter "resolver"
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "defaultEnabled"

    .prologue
    const/4 v6, 0x3

    .line 231
    invoke-static {p1, p2}, Lcom/google/android/partnersetup/GooglePartnerSetup;->getSystemPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 233
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 234
    const-string v5, "GooglePartnerSetup"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not installed, can\'t change its visibility"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gms_disable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, gserviceKey:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, gserviceValue:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 245
    const-string v5, "GooglePartnerSetup"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Gservices value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", using default enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v2           #gserviceKey:Ljava/lang/String;
    .end local v3           #gserviceValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing over to default enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 255
    .end local v0           #e:Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    .restart local v2       #gserviceKey:Ljava/lang/String;
    .restart local v3       #gserviceValue:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2, v3, v5}, Lcom/google/android/partnersetup/AppHider;->shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 258
    .local v1, explicitEnabled:Z
    const-string v5, "GooglePartnerSetup"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 259
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " based on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setAppVisibilities(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x3

    .line 98
    sget-object v8, Lcom/google/android/partnersetup/GooglePartnerSetup;->sPackageToEnabled:Ljava/util/Map;

    .line 100
    .local v8, packageToEnabled:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v11, "GooglePartnerSetup"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 101
    const-string v11, "GooglePartnerSetup"

    const-string v12, "See which apps we should hide"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 104
    .local v10, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 105
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getPreferences(Landroid/content/Context;)Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    move-result-object v9

    .line 108
    .local v9, prefs:Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    invoke-virtual {v9}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingVersionNumber()I

    move-result v11

    if-eq v11, v14, :cond_2

    .line 109
    const-string v11, "GooglePartnerSetup"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 110
    const-string v11, "GooglePartnerSetup"

    const-string v12, "version changed, resetting count"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingRunCount(I)Z

    .line 113
    invoke-virtual {v9, v14}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingVersionNumber(I)Z

    .line 116
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingRunCount()I

    move-result v0

    .line 118
    .local v0, count:I
    const-string v11, "gms_disable:lock_count"

    const/4 v12, 0x4

    invoke-static {v10, v11, v12}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 120
    .local v5, lockCount:I
    if-ge v0, v5, :cond_5

    .line 121
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v7, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 124
    .local v1, defaultEnabled:Z
    invoke-static {v10, v6, v7, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    .end local v1           #defaultEnabled:Z
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7           #packageName:Ljava/lang/String;
    :cond_3
    const-string v11, "device_country"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, gservicesCountryCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 132
    invoke-virtual {v9}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->incrementHidingRunCount()V

    .line 144
    .end local v3           #gservicesCountryCode:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/google/android/partnersetup/AppHider;->setFallbackMcc(Landroid/content/Context;)V

    .line 145
    return-void

    .line 135
    :cond_5
    const-string v11, "GooglePartnerSetup"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 136
    const-string v11, "GooglePartnerSetup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > limit: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", only updating visibility of market app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    const-string v7, "com.android.vending"

    .line 140
    .restart local v7       #packageName:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 141
    .restart local v1       #defaultEnabled:Z
    invoke-static {v10, v6, v7, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private static setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    .line 365
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 367
    .local v0, newState:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 368
    return-void

    .line 365
    .end local v0           #newState:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static setFallbackMcc(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 168
    const/4 v5, 0x0

    .line 170
    .local v5, mccNum:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 171
    .local v0, config:Landroid/content/res/Configuration;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 174
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, simCountryCode:Ljava/lang/String;
    const-string v8, "ro.com.google.mcc_fallback"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, countrySysProp:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, fallbackMccNum:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_country"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, gservicesCountryCode:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    if-eqz v3, :cond_4

    .line 188
    if-eqz v4, :cond_1

    const-string v8, "de"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 190
    :cond_1
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 191
    const-string v8, "GooglePartnerSetup"

    const-string v9, "Setting fallback MCC based on system property."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    move v5, v3

    .line 205
    :goto_0
    iput v5, v0, Landroid/content/res/Configuration;->mcc:I

    .line 206
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 208
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting fallback mcc: mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 213
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new config from system:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #countrySysProp:Ljava/lang/String;
    .end local v3           #fallbackMccNum:I
    .end local v4           #gservicesCountryCode:Ljava/lang/String;
    .end local v6           #simCountryCode:Ljava/lang/String;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    return-void

    .line 196
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #countrySysProp:Ljava/lang/String;
    .restart local v3       #fallbackMccNum:I
    .restart local v4       #gservicesCountryCode:Ljava/lang/String;
    .restart local v6       #simCountryCode:Ljava/lang/String;
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 197
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clearing fallback MCC based on gservices country: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_6
    const/16 v5, 0x3e7

    goto :goto_0

    .line 217
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #countrySysProp:Ljava/lang/String;
    .end local v3           #fallbackMccNum:I
    .end local v4           #gservicesCountryCode:Ljava/lang/String;
    .end local v6           #simCountryCode:Ljava/lang/String;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "GooglePartnerSetup"

    const-string v9, "Failed to set fallback mcc"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .parameter "installedVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 281
    const/high16 v5, -0x8000

    .line 282
    .local v5, maxVersion:I
    const/4 v6, 0x0

    .line 284
    .local v6, maxVersionEnabled:Ljava/lang/Boolean;
    if-nez p1, :cond_0

    .line 285
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 289
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v1, p1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v1, clauseTokenizer:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 293
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, clause:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v4, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v4, innerTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 296
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad token count in clause \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 299
    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, minVersionString:Ljava/lang/String;
    invoke-static {v8, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 303
    .local v7, minVersion:I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, enabledString:Ljava/lang/String;
    invoke-static {v2, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 308
    .local v3, explicitEnabled:Z
    if-lt v7, v5, :cond_1

    if-gt v7, p2, :cond_1

    .line 309
    if-ne v7, v5, :cond_3

    .line 311
    const-string v9, "GooglePartnerSetup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Multiple entries for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    move v5, v7

    .line 315
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 319
    .end local v0           #clause:Ljava/lang/String;
    .end local v2           #enabledString:Ljava/lang/String;
    .end local v3           #explicitEnabled:Z
    .end local v4           #innerTokenizer:Ljava/util/StringTokenizer;
    .end local v7           #minVersion:I
    .end local v8           #minVersionString:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    .line 320
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 323
    :cond_5
    const-string v9, "GooglePartnerSetup"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 324
    const-string v9, "GooglePartnerSetup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found visibility "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    return v9
.end method

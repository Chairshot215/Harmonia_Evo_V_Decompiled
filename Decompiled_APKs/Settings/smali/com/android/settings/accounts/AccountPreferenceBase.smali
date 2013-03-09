.class Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field public static final ACCOUNT_TYPES_FILTER_KEY:Ljava/lang/String; = "account_types"

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTypeToAuthDescription:Ljava/util/Map;
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
    .locals 2

    .prologue
    .line 50
    const-string v0, "AccountSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/AccountPreferenceBase;->LDEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 108
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 13
    .parameter "accountType"

    .prologue
    .line 193
    const/4 v9, 0x0

    .line 194
    .local v9, prefs:Landroid/preference/PreferenceScreen;
    iget-object v10, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 195
    const/4 v4, 0x0

    .line 197
    .local v4, desc:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    move-object v4, v0

    .line 198
    if-eqz v4, :cond_2

    iget v10, v4, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v10, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 200
    .local v1, authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    iget v11, v4, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v10, v1, v11, v12}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, contextField:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 208
    .local v3, contextField2:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    .local v7, j:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 209
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_3

    .line 210
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 212
    .local v8, pc:Landroid/preference/PreferenceCategory;
    if-nez v2, :cond_0

    .line 213
    :try_start_1
    const-class v10, Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 215
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    .line 227
    :goto_1
    :try_start_2
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0400b1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 208
    .end local v8           #pc:Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    .restart local v8       #pc:Landroid/preference/PreferenceCategory;
    :catch_0
    move-exception v5

    .line 219
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 251
    .end local v1           #authContext:Landroid/content/Context;
    .end local v2           #contextField:Ljava/lang/reflect/Field;
    .end local v3           #contextField2:Ljava/lang/reflect/Field;
    .end local v5           #e:Ljava/lang/SecurityException;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #pc:Landroid/preference/PreferenceCategory;
    :catch_1
    move-exception v5

    .line 252
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v4           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_3
    return-object v9

    .line 220
    .restart local v1       #authContext:Landroid/content/Context;
    .restart local v2       #contextField:Ljava/lang/reflect/Field;
    .restart local v3       #contextField2:Ljava/lang/reflect/Field;
    .restart local v4       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v8       #pc:Landroid/preference/PreferenceCategory;
    :catch_2
    move-exception v5

    .line 221
    .local v5, e:Ljava/lang/NoSuchFieldException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 253
    .end local v1           #authContext:Landroid/content/Context;
    .end local v2           #contextField:Ljava/lang/reflect/Field;
    .end local v3           #contextField2:Ljava/lang/reflect/Field;
    .end local v5           #e:Ljava/lang/NoSuchFieldException;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #pc:Landroid/preference/PreferenceCategory;
    :catch_3
    move-exception v5

    .line 254
    .local v5, e:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 222
    .end local v5           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #authContext:Landroid/content/Context;
    .restart local v2       #contextField:Ljava/lang/reflect/Field;
    .restart local v3       #contextField2:Ljava/lang/reflect/Field;
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v8       #pc:Landroid/preference/PreferenceCategory;
    :catch_4
    move-exception v5

    .line 223
    .local v5, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 255
    .end local v1           #authContext:Landroid/content/Context;
    .end local v2           #contextField:Ljava/lang/reflect/Field;
    .end local v3           #contextField2:Ljava/lang/reflect/Field;
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #pc:Landroid/preference/PreferenceCategory;
    :catch_5
    move-exception v5

    .line 256
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NullPointerException found for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " getActivity() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 224
    .end local v5           #e:Ljava/lang/NullPointerException;
    .restart local v1       #authContext:Landroid/content/Context;
    .restart local v2       #contextField:Ljava/lang/reflect/Field;
    .restart local v3       #contextField2:Ljava/lang/reflect/Field;
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v8       #pc:Landroid/preference/PreferenceCategory;
    :catch_6
    move-exception v5

    .line 225
    .local v5, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .end local v8           #pc:Landroid/preference/PreferenceCategory;
    :cond_3
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_1

    .line 229
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 231
    .local v8, pc:Landroid/preference/PreferenceScreen;
    if-nez v3, :cond_4

    .line 232
    :try_start_6
    const-class v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 234
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    .line 246
    :goto_4
    :try_start_7
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0400b0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto/16 :goto_2

    .line 237
    :catch_7
    move-exception v5

    .line 238
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_4

    .line 239
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_8
    move-exception v5

    .line 240
    .local v5, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_4

    .line 241
    .end local v5           #e:Ljava/lang/NoSuchFieldException;
    :catch_9
    move-exception v5

    .line 242
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 243
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v5

    .line 244
    .local v5, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 120
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 121
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 122
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 123
    aget-object v3, v4, v1

    .line 124
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 125
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    sget-boolean v5, Lcom/android/settings/accounts/AccountPreferenceBase;->LDEBUG:Z

    if-eqz v5, :cond_1

    .line 130
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 149
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 161
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 156
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 158
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getActivity() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 174
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 184
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 179
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getActivity() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 64
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onResume()V

    .line 93
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 99
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 272
    return-void
.end method

.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final DEBUG:Z = false

.field public static final RESSTR_RES_FIRST_SPLIT:Ljava/lang/String; = "@"

.field public static final RESSTR_STRING_TYPE:Ljava/lang/String; = "string/"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mIMEDataSet:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    .line 39
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 40
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 156
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 161
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getCustDefIMESettings(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .parameter "targetLocale"

    .prologue
    .line 104
    const-string v0, ""

    .line 108
    .local v0, IMESetting:Ljava/lang/String;
    const-string v3, "system_LOCALE_IME_MAP"

    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    .line 110
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, locale:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/settings/LocalePicker;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/settings/LocalePicker;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v1           #locale:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, nowIME:Ljava/lang/String;
    const-string v3, "com.swype.android.inputmethod/.SwypeInputMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    :cond_2
    const-string v0, "SWYPE"

    .line 150
    .end local v2           #nowIME:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0

    .line 138
    .restart local v2       #nowIME:Ljava/lang/String;
    :cond_4
    const-string v3, "system_IME"

    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    .line 140
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    .line 141
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mIMEDataSet:Landroid/os/Bundle;

    const-string v4, ""

    const-string v5, "defeault"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/LocalePicker;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    goto :goto_0

    .line 145
    :cond_6
    const-string v3, "LocalePicker"

    const-string v4, "[getCustDefIMESettings] Setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIMEPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "IME_Tag"

    .prologue
    const/4 v3, 0x0

    .line 208
    const-string v0, "[getIMEPackageName]"

    .line 209
    .local v0, FunTag:Ljava/lang/String;
    const-string v2, "com.android.settings"

    .line 210
    .local v2, mPakName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 217
    .local v1, mPak:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 222
    :goto_0
    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_1
    return-object v3

    .line 225
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@string/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string/"

    invoke-virtual {v1, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, str_id:I
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, ret:Ljava/lang/String;
    goto :goto_1

    .line 218
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #str_id:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 168
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 187
    :goto_0
    return-object v2

    .line 172
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 173
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    const/4 v8, 0x0

    .line 181
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 185
    invoke-direct {p0, v8}, Lcom/android/settings/LocalePicker;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 186
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 187
    goto :goto_0

    .line 182
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 183
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v1

    .line 193
    :cond_1
    const-string v2, ""

    if-ne v2, p2, :cond_2

    move-object v0, p1

    .line 194
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    .end local v0           #childbundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method protected handleIMCustomizedEx(Ljava/util/Locale;)Z
    .locals 8
    .parameter "targetLocale"

    .prologue
    const/4 v7, 0x1

    .line 71
    const-string v0, "[handleIMCustomizedEx]"

    .line 72
    .local v0, FunTAG:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/settings/LocalePicker;->getCustDefIMESettings(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, defIME:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 76
    :cond_0
    const-string v4, "LocalePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Invalid default IME name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    :goto_0
    return v7

    .line 79
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/LocalePicker;->getIMEPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, pkgName:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_input_methods"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, imeList:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_input_method"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "item_background_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LocaleChange"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/LocalePicker;->handleIMCustomizedEx(Ljava/util/Locale;)Z

    .line 64
    return-void
.end method

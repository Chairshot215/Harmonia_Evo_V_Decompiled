.class public Lcom/android/settings/PenSetting$SettingsModule;
.super Ljava/lang/Object;
.source "PenSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsModule"
.end annotation


# static fields
.field private static final KEY_APPLICATION_PENPRODUCT:Ljava/lang/String; = "application_penproduct"

.field private static final KEY_DEFAULT_URL:Ljava/lang/String; = "default_url"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "SettingsModule"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUrl:Ljava/lang/String;

.field private mPenlink:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mContext:Landroid/content/Context;

    .line 248
    iput-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mPenlink:Landroid/os/Bundle;

    .line 249
    iput-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/android/settings/PenSetting$SettingsModule;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 257
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 258
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 263
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static getDefaultUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/android/settings/PenSetting$SettingsModule;->getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_url"

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Lcom/android/settings/PenSetting$SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "name"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 270
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 271
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 284
    :goto_0
    return-object v2

    .line 274
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 279
    :cond_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 280
    .local v9, valueIndx:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 281
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 282
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/settings/PenSetting$SettingsModule;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 283
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 284
    goto :goto_0
.end method

.method private static getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"

    .prologue
    .line 298
    const-string v0, "application_penproduct"

    invoke-static {v0, p0}, Lcom/android/settings/PenSetting$SettingsModule;->getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 288
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v1

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 291
    .local v0, childbundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/PenSetting$SettingsModule;->getDefaultUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "http://www.htc.com"

    iput-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PenSetting$SettingsModule;->mDefaultUrl:Ljava/lang/String;

    return-object v0
.end method

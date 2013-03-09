.class public Lcom/android/providers/media/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# static fields
.field private static final KEY_APPLICATION_MEDIASCANNER:Ljava/lang/String; = "application_MediaScanner"

.field private static final KEY_DEFAULT_LOCALE:Ljava/lang/String; = "default_locale"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_PLENTY_SET:Ljava/lang/String; = "plenty_set"

.field private static final TAG:Ljava/lang/String; = "SettingsModule"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettings:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/providers/media/SettingsModule;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/providers/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    .line 28
    iput-object p1, p0, Lcom/android/providers/media/SettingsModule;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 33
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 39
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private static getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "name"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
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

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 47
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 60
    :goto_0
    return-object v2

    .line 50
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 56
    .local v9, valueIndx:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 58
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/providers/media/SettingsModule;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 59
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 60
    goto :goto_0
.end method

.method private static getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getSettingsModule()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/providers/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/providers/media/SettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/media/SettingsModule;->getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const-string v0, "application_MediaScanner"

    invoke-static {v0, p0}, Lcom/android/providers/media/SettingsModule;->getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

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

    .line 64
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, childbundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/providers/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_locale"

    const-string v2, "locale"

    invoke-static {v0, v1, v2}, Lcom/android/providers/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

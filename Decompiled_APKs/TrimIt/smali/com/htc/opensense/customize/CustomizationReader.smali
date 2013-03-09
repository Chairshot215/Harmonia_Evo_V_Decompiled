.class public Lcom/htc/opensense/customize/CustomizationReader;
.super Ljava/lang/Object;
.source "CustomizationReader.java"


# static fields
.field private static final KEY_MODULE_SOCIAL:Ljava/lang/String; = "application_social_network"

.field private static final KEY_SET_SOCIAL:Ljava/lang/String; = "settings"

.field private static final LOCAL_LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "CustomizationReader"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/opensense/customize/CustomizationReader;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "application_social_network"

    invoke-direct {p0, v0}, Lcom/htc/opensense/customize/CustomizationReader;->loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "moduleName"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/htc/opensense/customize/CustomizationReader;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0, p2}, Lcom/htc/opensense/customize/CustomizationReader;->loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 103
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-object v0
.end method

.method private getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/htc/opensense/customize/CustomizationReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
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

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 63
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 84
    :goto_0
    return-object v2

    .line 66
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 67
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v8, 0x0

    .line 75
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    invoke-direct {p0, v8}, Lcom/htc/opensense/customize/CustomizationReader;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .local v6, bundle:Landroid/os/Bundle;
    move-object v2, v6

    .line 84
    goto :goto_0

    .line 77
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 78
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    const-string v3, "CustomizationReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no customized data support getModule(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getSingleSet(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "itemkey"

    .prologue
    const/4 v0, 0x0

    .line 92
    if-eqz p1, :cond_0

    const-string v2, "settings"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, settings:Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_1

    .line 97
    :goto_1
    return-object v0

    .end local v1           #settings:Landroid/os/Bundle;
    :cond_0
    move-object v1, v0

    .line 92
    goto :goto_0

    .line 94
    .restart local v1       #settings:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method private loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "moduleName"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/htc/opensense/customize/CustomizationReader;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getStrItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "itemkey"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/opensense/customize/CustomizationReader;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/customize/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

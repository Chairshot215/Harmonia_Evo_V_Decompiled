.class public Lcom/android/settings/inputmethod/CIDCustomizeUtil;
.super Ljava/lang/Object;
.source "CIDCustomizeUtil.java"


# static fields
.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private KEY_SYSTEM_IME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIMEDataSet:Landroid/os/Bundle;

.field private mTargetKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "targetKey"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "system_InputMethod"

    iput-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->KEY_SYSTEM_IME:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mIMEDataSet:Landroid/os/Bundle;

    .line 16
    iput-object v1, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mContext:Landroid/content/Context;

    .line 17
    iput-object v1, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mTargetKey:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mContext:Landroid/content/Context;

    .line 21
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->KEY_SYSTEM_IME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mTargetKey:Ljava/lang/String;

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mTargetKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 29
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 35
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v3, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
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

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 43
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 62
    :goto_0
    return-object v2

    .line 46
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 47
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    const/4 v8, 0x0

    .line 55
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-direct {p0, v8}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .local v6, bundle:Landroid/os/Bundle;
    move-object v2, v6

    .line 62
    goto :goto_0

    .line 56
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 59
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public getIMEDataSet()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mIMEDataSet:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mTargetKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mIMEDataSet:Landroid/os/Bundle;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->mIMEDataSet:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    const-string v2, ""

    if-ne v2, p2, :cond_2

    move-object v0, p1

    .line 69
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    .end local v0           #childbundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

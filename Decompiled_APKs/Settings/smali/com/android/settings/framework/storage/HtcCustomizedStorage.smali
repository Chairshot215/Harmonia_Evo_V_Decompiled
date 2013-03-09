.class public Lcom/android/settings/framework/storage/HtcCustomizedStorage;
.super Ljava/lang/Object;
.source "HtcCustomizedStorage.java"


# static fields
.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "blob"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 107
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    .locals 11
    .parameter "context"
    .parameter "categoryName"
    .parameter "moduleName"

    .prologue
    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 45
    :cond_0
    const-string v10, "The context, categoryName and moduleName must be not null. \n"

    .line 46
    .local v10, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "categoryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "moduleName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v10           #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 61
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 62
    new-instance v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 83
    :goto_0
    return-object v2

    .line 67
    :cond_2
    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 68
    .local v8, columnIndex:I
    const/4 v3, -0x1

    if-ne v8, v3, :cond_3

    .line 69
    new-instance v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    new-instance v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 80
    :cond_4
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 81
    .local v6, blob:[B
    invoke-static {v6}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 82
    .local v7, bundle:Landroid/os/Bundle;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    new-instance v2, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    invoke-direct {v2, v7}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

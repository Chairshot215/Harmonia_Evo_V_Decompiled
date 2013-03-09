.class public Lcom/android/phone/htc/HtcCustomizedData;
.super Ljava/lang/Object;
.source "HtcCustomizedData.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static final MARKET_NAME_FUNCTION_ENTRIES:Ljava/lang/String; = "market_name"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "blob"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 71
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-object v0
.end method

.method public static final getCustomizedDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/Settings_properties"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 32
    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, deviceName:Ljava/lang/String;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 35
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 37
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 38
    .local v8, columnIndex:I
    const/4 v2, -0x1

    if-eq v2, v8, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 53
    .end local v8           #columnIndex:I
    :cond_1
    return-object v10

    .line 43
    .restart local v8       #columnIndex:I
    :cond_2
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 44
    .local v6, blob:[B
    invoke-static {v6}, Lcom/android/phone/htc/HtcCustomizedData;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 45
    .local v7, bundle:Landroid/os/Bundle;
    const-string v2, "market_name"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

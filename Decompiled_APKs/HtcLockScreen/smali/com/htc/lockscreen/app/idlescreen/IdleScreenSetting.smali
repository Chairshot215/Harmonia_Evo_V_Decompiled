.class public Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;
.super Ljava/lang/Object;
.source "IdleScreenSetting.java"


# static fields
.field private static final COMP:Ljava/lang/String; = "component"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Lockscreen"

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "com.htc.idlescreen.shortcut"

.field private static final DEFAULT_SERVICE:Ljava/lang/String; = "com.htc.idlescreen.shortcut.ShortcutService"

.field private static final KEY:Ljava/lang/String; = "idlescreen"

.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleScreenSetting"

.field private static final SETTING_PATH:Ljava/lang/String; = "/data/system/idlescreen_info.xml"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 225
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 226
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 229
    return-object v0
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Lockscreen"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 204
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "IdleScreenSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 210
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 211
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 215
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 215
    :cond_1
    if-eqz v8, :cond_2

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_2
    const-string v3, "IdleScreenSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no module bundle found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 220
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static loadSIE(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 7
    .parameter "context"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, compName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 177
    const-string v5, "idlescreen"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 178
    .local v4, function:Landroid/os/Bundle;
    const-string v5, "component"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, compStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #compStr:Ljava/lang/String;
    .end local v4           #function:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "IdleScreenSetting"

    const-string v6, "loadSIE fail"

    invoke-static {v5, v6, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 46
    const-string v0, "/data/system/idlescreen_info.xml"

    .line 47
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/idlescreen_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/idlescreen_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private setDefaultDimension(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 190
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    .local v0, dp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    .line 192
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    .line 193
    iget v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    iget v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    if-le v2, v3, :cond_0

    .line 194
    iget v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    .line 195
    .local v1, temp:I
    iget v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    iput v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    .line 196
    iput v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    .line 198
    .end local v1           #temp:I
    :cond_0
    const-string v2, "IdleScreenSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultDimension mWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method public getDefaultComp()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 162
    const-string v0, "com.htc.idlescreen.shortcut"

    .line 163
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "com.htc.idlescreen.shortcut.ShortcutService"

    .line 170
    .local v1, serviceName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public loadSettings(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 95
    const-string v10, "IdleScreenSetting"

    const-string v12, "loadSettings"

    invoke-static {v10, v12}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 98
    .local v3, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    .line 99
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 102
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 103
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 104
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 109
    .local v9, type:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 110
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, tag:Ljava/lang/String;
    const-string v10, "is"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 112
    const/4 v10, 0x0

    const-string v12, "width"

    invoke-interface {v4, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    .line 113
    const/4 v10, 0x0

    const-string v12, "height"

    invoke-interface {v4, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    .line 115
    const/4 v10, 0x0

    const-string v12, "component"

    invoke-interface {v4, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, comp:Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_0
    iput-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    .line 119
    const-string v10, "IdleScreenSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSettings mWidth:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v10, "IdleScreenSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSettings mHeight:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v10, "IdleScreenSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSettings mComponentName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 124
    .end local v0           #comp:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 125
    const/4 v7, 0x1

    move-object v5, v6

    .line 138
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_2

    .line 139
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 146
    :cond_2
    :goto_2
    iget v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    if-lez v10, :cond_3

    iget v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    if-gtz v10, :cond_4

    .line 147
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->setDefaultDimension(Landroid/content/Context;)V

    .line 149
    :cond_4
    iget-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    if-nez v10, :cond_6

    .line 150
    invoke-static {p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->loadSIE(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    .line 151
    iget-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    if-nez v10, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->getDefaultComp()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    .line 154
    :cond_5
    iget-object v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v10}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->saveSettings(Landroid/content/ComponentName;)V

    .line 157
    :cond_6
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings mWidth:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mHeight:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v0       #comp:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_7
    move-object v10, v11

    .line 116
    goto/16 :goto_0

    .line 126
    .end local v0           #comp:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 131
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .line 133
    .local v1, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v1

    .line 143
    .local v1, e:Ljava/io/IOException;
    const-string v10, "IdleScreenSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSettings stream close fail:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 132
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 130
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 128
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 126
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public saveSettings(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    iget v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->saveSettings(Landroid/content/ComponentName;II)V

    .line 52
    return-void
.end method

.method public saveSettings(Landroid/content/ComponentName;II)V
    .locals 9
    .parameter "componentName"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    const-string v6, "IdleScreenSetting"

    const-string v7, "saveSettings"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 57
    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 59
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .local v5, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 61
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    const/4 v6, 0x0

    const-string v7, "is"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const/4 v6, 0x0

    const-string v7, "width"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const/4 v6, 0x0

    const-string v7, "height"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 v6, 0x0

    const-string v7, "component"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_0
    const/4 v6, 0x0

    const-string v7, "is"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 74
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 75
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 77
    iput p2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    .line 78
    iput p3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    .line 79
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 92
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const-string v6, "IdleScreenSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveSettings fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 83
    if-eqz v4, :cond_1

    .line 84
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 86
    :catch_1
    move-exception v1

    .line 88
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "IdleScreenSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveSettings stream close fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

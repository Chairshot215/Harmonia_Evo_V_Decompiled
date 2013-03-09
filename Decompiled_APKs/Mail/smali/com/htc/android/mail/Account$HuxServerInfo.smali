.class public Lcom/htc/android/mail/Account$HuxServerInfo;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HuxServerInfo"
.end annotation


# static fields
.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2987
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2986
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 2989
    const-class v0, Lcom/htc/android/mail/Account$HuxServerInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2990
    monitor-exit v0

    return-void

    .line 2989
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "key"

    .prologue
    .line 2992
    const-class v13, Lcom/htc/android/mail/Account$HuxServerInfo;

    monitor-enter v13

    :try_start_0
    sget-object v12, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;

    if-nez v12, :cond_3

    .line 2993
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;

    .line 2994
    const/4 v8, 0x0

    .line 2995
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    sget-boolean v12, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v12, :cond_0

    .line 2996
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "hux_settings.xml"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2997
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_4

    .line 2999
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3000
    .local v6, in:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 3001
    const/4 v12, 0x0

    invoke-interface {v8, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3014
    .end local v4           #file:Ljava/io/File;
    .end local v6           #in:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 3015
    :try_start_2
    const-string v12, "hux_server_setting_switch"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3016
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v12, "testing_server_setting"

    const/4 v14, 0x0

    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3017
    .local v3, enabled:Z
    if-nez v3, :cond_5

    .line 3018
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f05000d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 3025
    .end local v3           #enabled:Z
    .end local v9           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    :try_start_3
    const-string v12, "hux_settings"

    invoke-static {v8, v12}, Lcom/htc/android/mail/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3027
    :cond_2
    invoke-static {v8}, Lcom/htc/android/mail/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3028
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3029
    .local v10, tag:Ljava/lang/String;
    const-string v12, "setting"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    if-nez v12, :cond_6

    .line 3045
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_4
    sget-object v12, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    return-object v12

    .line 3002
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 3003
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3004
    const/4 v8, 0x0

    .line 3008
    goto :goto_0

    .line 3005
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 3006
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3007
    const/4 v8, 0x0

    .line 3008
    goto :goto_0

    .line 3010
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    const-string v12, "Account"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "can\'t find "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2992
    .end local v4           #file:Ljava/io/File;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 3020
    .restart local v3       #enabled:Z
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #sp:Landroid/content/SharedPreferences;
    :cond_5
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f050010

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 3033
    .end local v3           #enabled:Z
    .end local v9           #sp:Landroid/content/SharedPreferences;
    .restart local v10       #tag:Ljava/lang/String;
    :cond_6
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .line 3035
    .local v7, numAttrs:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v7, :cond_2

    .line 3036
    invoke-interface {v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 3037
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 3038
    .local v11, value:Ljava/lang/String;
    sget-object v12, Lcom/htc/android/mail/Account$HuxServerInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v12, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3035
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3041
    .end local v1           #attrName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #numAttrs:I
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 3042
    .local v2, e:Ljava/lang/Exception;
    :try_start_8
    const-string v12, "HuxServerInfo"

    const-string v14, "catch exception"

    invoke-static {v12, v14, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

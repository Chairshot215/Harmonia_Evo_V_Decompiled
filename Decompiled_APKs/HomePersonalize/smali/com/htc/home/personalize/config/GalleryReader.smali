.class public Lcom/htc/home/personalize/config/GalleryReader;
.super Ljava/lang/Object;
.source "GalleryReader.java"


# static fields
.field public static final GENERATE_PREVIEW_IMAGES:Z = false

.field private static final TAG:Ljava/lang/String; = "GalleryReader"

.field private static final URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private ctx:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

.field private mOrientation:I

.field private mboolFileExist:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "cr"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 37
    iput-boolean v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 38
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    iput v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 41
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/htc/home/personalize/config/GalleryData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/GalleryData;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 51
    iput-object p1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    invoke-direct {p0}, Lcom/htc/home/personalize/config/GalleryReader;->fromContent()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "cr"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 37
    iput-boolean v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 38
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    iput v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 41
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/htc/home/personalize/config/GalleryData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/GalleryData;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 57
    iput-object p1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iput p2, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 59
    invoke-direct {p0}, Lcom/htc/home/personalize/config/GalleryReader;->fromContent()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ILandroid/content/Context;)V
    .locals 2
    .parameter "cr"
    .parameter "orientation"
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 37
    iput-boolean v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 38
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    iput v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 41
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    .line 63
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/htc/home/personalize/config/GalleryData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/GalleryData;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 65
    iput-object p1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    iput p2, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 67
    invoke-direct {p0}, Lcom/htc/home/personalize/config/GalleryReader;->fromContent()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "file"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 37
    iput-boolean v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 38
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    iput v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    .line 41
    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/htc/home/personalize/config/GalleryData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/GalleryData;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/config/GalleryReader;->fromXML(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private fromContent()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/htc/home/personalize/config/GalleryReader;->queryExtraWallpaper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 86
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GalleryReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher customization Query database fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"

    .prologue
    const/4 v9, 0x1

    .line 219
    const/4 v4, 0x0

    .line 221
    .local v4, reader:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 222
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 224
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    .line 227
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4

    .line 233
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    .line 235
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 236
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 238
    .local v1, eventType:I
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 249
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v1

    .line 250
    if-ne v1, v9, :cond_0

    .line 258
    if-eqz v5, :cond_1

    .line 260
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_1
    :goto_1
    move-object v4, v5

    .line 268
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #reader:Ljava/io/FileReader;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    const-string v8, "GalleryReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wallpaper size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v10}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    :goto_3
    return-void

    .line 228
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    if-eqz v4, :cond_3

    .line 260
    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 261
    :catch_1
    move-exception v0

    .line 263
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 243
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_6
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/config/GalleryReader;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_0

    .line 252
    .end local v1           #eventType:I
    :catch_2
    move-exception v3

    move-object v4, v5

    .line 253
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #reader:Ljava/io/FileReader;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v3, ioe:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_4
    :try_start_7
    const-string v8, "GalleryReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    if-eqz v4, :cond_2

    .line 260
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 261
    :catch_3
    move-exception v0

    .line 263
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 256
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_9
    const-string v8, "GalleryReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 258
    if-eqz v4, :cond_2

    .line 260
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 261
    :catch_5
    move-exception v0

    goto :goto_5

    .line 258
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v4, :cond_4

    .line 260
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 258
    :cond_4
    :goto_8
    throw v8

    .line 261
    :catch_6
    move-exception v0

    .line 263
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 261
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #reader:Ljava/io/FileReader;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 263
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #eventType:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_7

    .line 255
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_8
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 252
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v3

    goto :goto_4

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "xpp"

    .prologue
    .line 272
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, tagName:Ljava/lang/String;
    const-string v1, "GalleryReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/config/GalleryReader;->parseWallpaper(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 277
    :cond_0
    return-void
.end method

.method private parseWallpaper(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "xpp"

    .prologue
    .line 280
    new-instance v0, Lcom/htc/home/personalize/config/WallpaperData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/WallpaperData;-><init>()V

    .line 282
    .local v0, data:Lcom/htc/home/personalize/config/WallpaperData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 283
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thumb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    .line 282
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    goto :goto_1

    .line 287
    :cond_2
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v2, v0}, Lcom/htc/home/personalize/config/GalleryData;->add(Lcom/htc/home/personalize/config/WallpaperData;)V

    .line 292
    return-void
.end method

.method private queryExtraWallpaper()V
    .locals 20

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/config/GalleryReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 93
    .local v10, c:Landroid/database/Cursor;
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 95
    .local v15, isSense20:Z
    if-nez v10, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_0
    const-string v3, "value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 101
    .local v14, idValue:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 103
    .local v8, buffer:[B
    invoke-static {v8}, Lcom/htc/home/personalize/config/ContentUtils;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v9

    .line 105
    .local v9, bundle:Landroid/os/Bundle;
    const-string v16, "extra_wallpapers"

    .line 106
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 108
    .local v7, bookmarkBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/config/GalleryReader;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/htc/home/personalize/ImageAdjuster;->targetDensity:I

    .line 111
    :cond_2
    const/16 v3, 0x5f

    sput v3, Lcom/htc/home/personalize/ImageAdjuster;->compressQuality:I

    .line 112
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/home/personalize/ImageAdjuster;->downSampling:Z

    .line 113
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/home/personalize/ImageAdjuster;->dither:Z

    .line 114
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v3, Lcom/htc/home/personalize/ImageAdjuster;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 116
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v18

    .line 117
    .local v18, size:I
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_a

    .line 121
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_CustWallpaper: Order> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v12, Lcom/htc/home/personalize/config/WallpaperData;

    invoke-direct {v12}, Lcom/htc/home/personalize/config/WallpaperData;-><init>()V

    .line 125
    .local v12, data:Lcom/htc/home/personalize/config/WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 126
    const-string v3, "GalleryReader"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 129
    .local v11, childBundle:Landroid/os/Bundle;
    const-string v3, "thumb"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, value:Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 131
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    .line 134
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_CustWallpaper: Grid> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.thumb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v3, "image"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 140
    if-eqz v19, :cond_4

    .line 141
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    .line 144
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_CustWallpaper: Normal> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.image = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v3, "preview"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 150
    if-eqz v19, :cond_5

    .line 151
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    .line 154
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_CustWallpaper: Panel> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/home/personalize/config/GalleryReader;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 157
    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    .line 158
    .local v17, len:I
    const/4 v3, 0x4

    move/from16 v0, v17

    if-lt v0, v3, :cond_5

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v17, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_land"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    add-int/lit8 v5, v17, -0x4

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    .line 162
    .end local v17           #len:I
    :cond_5
    const-string v3, "GalleryReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.preview = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v15, :cond_7

    .line 189
    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, v12}, Lcom/htc/home/personalize/config/GalleryData;->add(Lcom/htc/home/personalize/config/WallpaperData;)V

    .line 119
    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 192
    :cond_7
    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, v12}, Lcom/htc/home/personalize/config/GalleryData;->add(Lcom/htc/home/personalize/config/WallpaperData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 209
    .end local v7           #bookmarkBundle:Landroid/os/Bundle;
    .end local v8           #buffer:[B
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v11           #childBundle:Landroid/os/Bundle;
    .end local v12           #data:Lcom/htc/home/personalize/config/WallpaperData;
    .end local v13           #i:I
    .end local v14           #idValue:I
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #size:I
    .end local v19           #value:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_9

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_8
    const/4 v10, 0x0

    .line 209
    :cond_9
    throw v3

    .restart local v7       #bookmarkBundle:Landroid/os/Bundle;
    .restart local v8       #buffer:[B
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v13       #i:I
    .restart local v14       #idValue:I
    .restart local v16       #key:Ljava/lang/String;
    .restart local v18       #size:I
    :cond_a
    if-eqz v10, :cond_0

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getGalleryData()Lcom/htc/home/personalize/config/GalleryData;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    return-object v0
.end method

.method public isFileExist()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/home/personalize/config/GalleryReader;->mboolFileExist:Z

    return v0
.end method

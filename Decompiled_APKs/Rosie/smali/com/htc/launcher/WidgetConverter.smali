.class public Lcom/htc/launcher/WidgetConverter;
.super Ljava/lang/Object;
.source "WidgetConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetConverter"

.field private static final TAG_FXWIDGET_PACKAGE:Ljava/lang/String; = "fxwidget_package_name"

.field private static final TAG_FXWIDGET_PROP:Ljava/lang/String; = "fxwidget_props"

.field private static final TAG_FXWIDGET_PROVIDER:Ljava/lang/String; = "fxwidget_provider_name"

.field private static final TAG_FXWIDGET_WIDGET:Ljava/lang/String; = "fxwidget_widget_name"

.field private static final TAG_HTCWIDGET_PACKAGE:Ljava/lang/String; = "htcwidget_package_name"

.field private static final TAG_HTCWIDGET_WIDGET:Ljava/lang/String; = "htcwidget_widget_name"

.field private static final TAG_WIDGET:Ljava/lang/String; = "widget"

.field private static final localLOGD:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    return-void
.end method

.method public static convert(Landroid/content/Context;Lcom/htc/android/rosie/home/HostWidgetManager;)V
    .locals 3
    .parameter "context"
    .parameter "fxWidgetManager"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, mappingTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, validTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    invoke-static {p0, v0, v1, v2}, Lcom/htc/launcher/WidgetConverter;->createTable(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 53
    invoke-static {p0, p1, v0, v1, v2}, Lcom/htc/launcher/WidgetConverter;->convertFavorite(Landroid/content/Context;Lcom/htc/android/rosie/home/HostWidgetManager;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 54
    return-void
.end method

.method private static convertFavorite(Landroid/content/Context;Lcom/htc/android/rosie/home/HostWidgetManager;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "context"
    .parameter "fxWidgetManager"
    .parameter "cr"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/rosie/home/HostWidgetManager;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, mappingTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    .local p4, validTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    const/4 v2, 0x0

    .line 61
    const/4 v6, 0x0

    .line 63
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "itemType>1000"

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    :cond_0
    const-string v0, "itemType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 70
    .local v9, itemType:I
    const/4 v10, 0x0

    .line 72
    .local v10, success:Z
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;

    .line 73
    .local v8, item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    iget v0, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->itemType:I

    if-ne v0, v9, :cond_1

    .line 74
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 75
    .local v1, id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProviderName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, intent:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetWidgetName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, uri:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->allocWidgetId()I

    move-result v2

    .line 78
    .local v2, widgetId:I
    iget-object v5, v8, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProp:Ljava/lang/String;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/WidgetConverter;->updateFavoriteWidgetValue(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v10, 0x1

    .line 98
    .end local v1           #id:I
    .end local v2           #widgetId:I
    .end local v3           #intent:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    .end local v8           #item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #itemType:I
    .end local v10           #success:Z
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_4
    return-void
.end method

.method private static convertProps(Ljava/lang/String;)[B
    .locals 15
    .parameter "input"

    .prologue
    .line 176
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 178
    const-string v12, ";"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, propStrings:[Ljava/lang/String;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 180
    .local v10, properties:Ljava/util/Properties;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v8, v0, v2

    .line 181
    .local v8, propString:Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, keyAndValue:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v12, v3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v12, 0x0

    aget-object v4, v3, v12

    .line 185
    .local v4, keyString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 186
    const/4 v12, 0x1

    aget-object v11, v3, v12

    .line 187
    .local v11, valueString:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 188
    invoke-virtual {v10, v4, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    .end local v3           #keyAndValue:[Ljava/lang/String;
    .end local v4           #keyString:Ljava/lang/String;
    .end local v8           #propString:Ljava/lang/String;
    .end local v11           #valueString:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 193
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v7, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v7, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 202
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #out2:Ljava/io/ObjectOutputStream;
    .end local v9           #propStrings:[Ljava/lang/String;
    .end local v10           #properties:Ljava/util/Properties;
    :goto_2
    return-object v12

    .line 197
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v9       #propStrings:[Ljava/lang/String;
    .restart local v10       #properties:Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "WidgetConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to convert properties to byte array"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v9           #propStrings:[Ljava/lang/String;
    .end local v10           #properties:Ljava/util/Properties;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private static createTable(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "context"
    .parameter "cr"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, mappingTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    .local p3, validTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 212
    .local v16, startTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 214
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    .line 215
    .local v9, eventType:I
    :goto_0
    const/4 v1, 0x1

    if-eq v9, v1, :cond_1

    .line 216
    const/4 v1, 0x2

    if-ne v9, v1, :cond_0

    .line 217
    const-string v1, "widget"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {v15}, Lcom/htc/launcher/WidgetConverter;->createWidgetMappingItem(Landroid/content/res/XmlResourceParser;)Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;

    move-result-object v11

    .line 219
    .local v11, item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    if-eqz v11, :cond_0

    .line 220
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v11           #item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    :cond_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    goto :goto_0

    .line 226
    .end local v9           #eventType:I
    :catch_0
    move-exception v8

    .line 227
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 257
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 259
    .local v7, cursor:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 261
    if-eqz v7, :cond_5

    .line 262
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 265
    .local v13, itemType:I
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, packageName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, widgetName:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 283
    .local v12, itemCategory:I
    if-eqz v14, :cond_3

    if-eqz v19, :cond_3

    const/4 v1, 0x2

    if-eq v12, v1, :cond_6

    .line 300
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    .end local v12           #itemCategory:I
    .end local v13           #itemType:I
    .end local v14           #packageName:Ljava/lang/String;
    .end local v19           #widgetName:Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_5
    return-void

    .line 228
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 229
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 286
    .end local v8           #e:Ljava/io/IOException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v12       #itemCategory:I
    .restart local v13       #itemType:I
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v19       #widgetName:Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    .line 287
    .local v18, success:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;

    .line 288
    .restart local v11       #item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    iget-object v1, v11, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetPackageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v11, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetWidgetName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 290
    iput v13, v11, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->itemType:I

    .line 291
    const/16 v18, 0x1

    .line 296
    .end local v11           #item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    :cond_8
    if-nez v18, :cond_3

    .line 297
    const-string v1, "WidgetConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static createWidgetMappingItem(Landroid/content/res/XmlResourceParser;)Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 327
    new-instance v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;

    invoke-direct {v1}, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;-><init>()V

    .line 328
    .local v1, item:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 329
    .local v0, eventType:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v2, "widget"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 330
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 331
    const-string v2, "htcwidget_package_name"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 333
    if-ne v0, v4, :cond_1

    .line 334
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetPackageName:Ljava/lang/String;

    .line 337
    :cond_1
    const-string v2, "htcwidget_widget_name"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 339
    if-ne v0, v4, :cond_2

    .line 340
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetWidgetName:Ljava/lang/String;

    .line 343
    :cond_2
    const-string v2, "fxwidget_package_name"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 345
    if-ne v0, v4, :cond_3

    .line 346
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetPackageName:Ljava/lang/String;

    .line 349
    :cond_3
    const-string v2, "fxwidget_provider_name"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 351
    if-ne v0, v4, :cond_4

    .line 352
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProviderName:Ljava/lang/String;

    .line 355
    :cond_4
    const-string v2, "fxwidget_widget_name"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 356
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 357
    if-ne v0, v4, :cond_5

    .line 358
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetWidgetName:Ljava/lang/String;

    .line 361
    :cond_5
    const-string v2, "fxwidget_props"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 363
    if-ne v0, v4, :cond_6

    .line 364
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProp:Ljava/lang/String;

    .line 368
    :cond_6
    iget-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetPackageName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 369
    const-string v2, "NA"

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetPackageName:Ljava/lang/String;

    .line 370
    :cond_7
    iget-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetWidgetName:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 371
    const-string v2, "NA"

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetWidgetName:Ljava/lang/String;

    .line 372
    :cond_8
    iget-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetPackageName:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 373
    const-string v2, "NA"

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetPackageName:Ljava/lang/String;

    .line 374
    :cond_9
    iget-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProviderName:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 375
    const-string v2, "NA"

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetProviderName:Ljava/lang/String;

    .line 376
    :cond_a
    iget-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetWidgetName:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 377
    const-string v2, "NA"

    iput-object v2, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->fxwidgetWidgetName:Ljava/lang/String;

    .line 378
    :cond_b
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 381
    :cond_c
    return-object v1
.end method

.method private static deleteFavoriteWidgetValue(Landroid/content/ContentResolver;I)I
    .locals 4
    .parameter "cr"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 172
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isValidWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "packageName"
    .parameter "widgetName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, table:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;>;"
    const/4 v2, 0x0

    .line 316
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v2

    .line 318
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;

    .line 319
    .local v1, widget:Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;
    iget-object v3, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/htc/launcher/WidgetConverter$WidgetMappingItem;->htcwidgetWidgetName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static updateFavoriteWidgetValue(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cr"
    .parameter "id"
    .parameter "allocateId"
    .parameter "intent"
    .parameter "uri"
    .parameter "fxwidgetProp"

    .prologue
    const/4 v5, 0x0

    .line 155
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "itemType"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v2, "appWidgetId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v2, "intent"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "uri"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p5}, Lcom/htc/launcher/WidgetConverter;->convertProps(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    .local v0, props:[B
    if-eqz v0, :cond_0

    .line 162
    const-string v2, "props"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 163
    :cond_0
    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method

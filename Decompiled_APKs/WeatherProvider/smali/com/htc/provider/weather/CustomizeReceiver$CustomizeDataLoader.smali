.class Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;
.super Ljava/lang/Thread;
.source "CustomizeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/weather/CustomizeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizeDataLoader"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/provider/weather/CustomizeReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->context:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.android.worldclock"

    invoke-static {v2, v3}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v22

    .line 76
    .local v22, wls:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v2, v0

    if-lez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v13, 0x0

    .line 124
    .local v13, customizeData:[B
    const/4 v12, 0x0

    .line 127
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://customization_settings/SettingTable/application_weather_provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 129
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const-string v2, "value"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 133
    :cond_2
    if-eqz v12, :cond_3

    .line 134
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    if-eqz v13, :cond_0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v20

    .line 140
    .local v20, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 141
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v9, bundle:Landroid/os/Bundle;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    const-string v2, "default_city"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 146
    .local v16, functionBundle:Landroid/os/Bundle;
    if-eqz v16, :cond_0

    .line 147
    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->size()I

    move-result v21

    .line 148
    .local v21, size:I
    const/4 v10, 0x0

    .line 149
    .local v10, count_weather:I
    const/4 v11, 0x0

    .line 150
    .local v11, count_worldclock:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plenty_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 153
    .local v14, defaultCity:Landroid/os/Bundle;
    if-eqz v14, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "app"

    const/4 v4, 0x0

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, app:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 157
    const-string v2, "com.htc.elroy.Weather"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    add-int/lit8 v10, v10, 0x1

    .line 182
    :cond_4
    :goto_2
    new-instance v19, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct/range {v19 .. v19}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 183
    .local v19, location:Lcom/htc/util/weather/WeatherLocation;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "type"

    const-string v4, "1"

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setCustomLocation(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "code"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "name"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "state"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "country"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "latitude"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "longitude"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "timezone"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    const-string v3, "timezoneid"

    const-string v4, ""

    #calls: Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v14, v3, v4}, Lcom/htc/provider/weather/CustomizeReceiver;->access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/htc/util/weather/WeatherLocation;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    invoke-static {v2, v8, v3}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 150
    .end local v8           #app:Ljava/lang/String;
    .end local v19           #location:Lcom/htc/util/weather/WeatherLocation;
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 133
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v10           #count_weather:I
    .end local v11           #count_worldclock:I
    .end local v14           #defaultCity:Landroid/os/Bundle;
    .end local v16           #functionBundle:Landroid/os/Bundle;
    .end local v17           #i:I
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #parcel:Landroid/os/Parcel;
    .end local v21           #size:I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_6

    .line 134
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :catch_0
    move-exception v15

    .line 201
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WeatherProviderCustomization] catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 169
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #app:Ljava/lang/String;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v10       #count_weather:I
    .restart local v11       #count_worldclock:I
    .restart local v14       #defaultCity:Landroid/os/Bundle;
    .restart local v16       #functionBundle:Landroid/os/Bundle;
    .restart local v17       #i:I
    .restart local v18       #key:Ljava/lang/String;
    .restart local v20       #parcel:Landroid/os/Parcel;
    .restart local v21       #size:I
    :cond_7
    :try_start_2
    const-string v2, "com.htc.android.worldclock"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 184
    .restart local v19       #location:Lcom/htc/util/weather/WeatherLocation;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

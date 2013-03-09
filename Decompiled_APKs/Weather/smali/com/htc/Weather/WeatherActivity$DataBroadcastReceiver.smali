.class public Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1171
    .local v5, action:Ljava/lang/String;
    const-string v14, "com.htc.sync.provider.weather.result"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1172
    const-string v14, "WeatherMaGroup"

    const-string v15, "DataBroadcastReceiver onReceive - SYNC_SERVICE_RESULT_INTENT_ACTION_NAME"

    invoke-static {v14, v15}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 1176
    .local v6, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 1212
    .end local v6           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1179
    .restart local v6       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v14

    new-array v12, v14, [Ljava/lang/String;

    .line 1180
    .local v12, s:[Ljava/lang/String;
    invoke-interface {v6, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1181
    const/4 v14, 0x0

    aget-object v7, v12, v14

    .line 1183
    .local v7, category:Ljava/lang/String;
    const-string v14, "WeatherMaGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const/4 v10, 0x0

    .line 1186
    .local v10, index:Ljava/lang/Integer;
    sget-object v14, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v14}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v13

    .line 1187
    .local v13, size:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 1188
    sget-object v14, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v14, v9}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/Weather/data/CityInfo;->getAgentCode()Ljava/lang/String;

    move-result-object v8

    .line 1189
    .local v8, code:Ljava/lang/String;
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 1190
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1197
    .end local v8           #code:Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_5

    .line 1198
    if-eqz v7, :cond_4

    const-string v14, "1__"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1199
    const-string v14, "WeatherMaGroup"

    const-string v15, "Receive TYPE_CURRENT_LOCATION data intent"

    invoke-static {v14, v15}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x0

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static/range {v14 .. v17}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto :goto_0

    .line 1187
    .restart local v8       #code:Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1202
    .end local v8           #code:Ljava/lang/String;
    :cond_4
    const-string v14, "WeatherMaGroup"

    const-string v15, "index==null"

    invoke-static {v14, v15}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_5
    const-string v14, "WeatherMaGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/htc/Weather/WeatherActivity;->access$400(Lcom/htc/Weather/WeatherActivity;)Landroid/os/Handler;

    move-result-object v11

    .line 1208
    .local v11, lDataHandler:Landroid/os/Handler;
    if-eqz v11, :cond_0

    .line 1209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/Weather/WeatherActivity;->access$400(Lcom/htc/Weather/WeatherActivity;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static/range {v14 .. v17}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method

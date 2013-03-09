.class Lcom/htc/android/worldclock/TimeZonePicker$3;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 213
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 214
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z
    invoke-static {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->access$500(Lcom/htc/android/worldclock/TimeZonePicker;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 249
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const/4 v8, 0x1

    #setter for: Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z
    invoke-static {v7, v8}, Lcom/htc/android/worldclock/TimeZonePicker;->access$502(Lcom/htc/android/worldclock/TimeZonePicker;Z)Z

    .line 218
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 219
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "search_intention"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 220
    .local v5, search_intention:I
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v7, v7, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v7, p3}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 222
    .local v0, c:Landroid/database/Cursor;
    const/4 v7, 0x1

    new-array v6, v7, [Lcom/htc/util/weather/WeatherLocation;

    .line 223
    .local v6, w:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v7, 0x0

    new-instance v8, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v8}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v8, v6, v7

    .line 224
    const/4 v7, 0x0

    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    aput-object v8, v6, v7

    .line 225
    packed-switch v5, :pswitch_data_0

    .line 246
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/android/worldclock/TimeZonePicker;->setResult(I)V

    .line 247
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->finish()V

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 228
    .local v3, msgAdd:Landroid/os/Message;
    const/16 v7, 0x2bd

    iput v7, v3, Landroid/os/Message;->what:I

    .line 229
    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->access$600(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 233
    .end local v3           #msgAdd:Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 234
    .local v4, msgHome:Landroid/os/Message;
    const/16 v7, 0x2be

    iput v7, v4, Landroid/os/Message;->what:I

    .line 235
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->access$600(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 239
    .end local v4           #msgHome:Landroid/os/Message;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v1, i:Landroid/content/Intent;
    const-string v7, "timezoneId"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v7, "name"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v1}, Lcom/htc/android/worldclock/TimeZonePicker;->setResult(ILandroid/content/Intent;)V

    .line 243
    iget-object v7, p0, Lcom/htc/android/worldclock/TimeZonePicker$3;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v7}, Lcom/htc/android/worldclock/TimeZonePicker;->finish()V

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

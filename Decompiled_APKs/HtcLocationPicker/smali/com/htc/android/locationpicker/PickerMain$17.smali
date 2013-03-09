.class Lcom/htc/android/locationpicker/PickerMain$17;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Lcom/htc/android/locationpicker/LocationAgent$AgentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/PickerMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatus(IIDD)V
    .locals 4
    .parameter "status"
    .parameter "signallevel"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const/4 v3, 0x1

    .line 1207
    packed-switch p1, :pswitch_data_0

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1210
    :pswitch_0
    const-string v0, "PickerMain"

    const-string v1, "onUpdateStatus : MODE_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerMain;->access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    goto :goto_0

    .line 1216
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2200(Lcom/htc/android/locationpicker/PickerMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const-string v0, "PickerMain"

    const-string v1, "onUpdateStatus : MODE_TRACKING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    goto :goto_0

    .line 1224
    :pswitch_2
    const-string v0, "PickerMain"

    const-string v1, "onUpdateStatus : MODE_FIX_GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerMain;->access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    .line 1227
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2300(Lcom/htc/android/locationpicker/PickerMain;)Lcom/htc/android/locationpicker/LocationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationAgent;->shutdownAgent()V

    .line 1228
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$2402(Lcom/htc/android/locationpicker/PickerMain;Landroid/location/Location;)Landroid/location/Location;

    .line 1229
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2400(Lcom/htc/android/locationpicker/PickerMain;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    .line 1230
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2400(Lcom/htc/android/locationpicker/PickerMain;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Landroid/location/Location;->setLongitude(D)V

    .line 1231
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerMain;->access$2502(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    .line 1232
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D
    invoke-static {v0, p3, p4}, Lcom/htc/android/locationpicker/PickerMain;->access$1302(Lcom/htc/android/locationpicker/PickerMain;D)D

    .line 1233
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D
    invoke-static {v0, p5, p6}, Lcom/htc/android/locationpicker/PickerMain;->access$1402(Lcom/htc/android/locationpicker/PickerMain;D)D

    .line 1235
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1237
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1238
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1239
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 1245
    :pswitch_3
    const-string v0, "PickerMain"

    const-string v1, "onUpdateStatus : MODE_FIX_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerMain;->access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    goto/16 :goto_0

    .line 1252
    :pswitch_4
    const-string v0, "PickerMain"

    const-string v1, "onUpdateStatus : MODE_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerMain;->access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z

    .line 1255
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$17;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2300(Lcom/htc/android/locationpicker/PickerMain;)Lcom/htc/android/locationpicker/LocationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationAgent;->continueTracking()V

    goto/16 :goto_0

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

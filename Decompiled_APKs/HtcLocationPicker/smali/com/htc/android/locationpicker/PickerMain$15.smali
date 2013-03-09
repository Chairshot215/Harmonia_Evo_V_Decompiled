.class Lcom/htc/android/locationpicker/PickerMain$15;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1122
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, result:Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1126
    const/4 v0, 0x1

    .line 1128
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z
    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerMain;->access$1700(Lcom/htc/android/locationpicker/PickerMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1131
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1132
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 1133
    const/4 v1, 0x1

    .line 1184
    :goto_0
    return v1

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerMain;->access$100(Lcom/htc/android/locationpicker/PickerMain;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1177
    const/4 v0, 0x0

    :cond_1
    :goto_1
    :pswitch_0
    move v1, v0

    .line 1184
    goto :goto_0

    .line 1139
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->stopTracking()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerMain;->access$1600(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1140
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelSelectSourceDialog(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/htc/android/locationpicker/PickerMain;->access$1800(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 1143
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelSelectSourceDialog(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/htc/android/locationpicker/PickerMain;->access$1800(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 1146
    :pswitch_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1147
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->showSelectSourceDialog()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerMain;->access$1900(Lcom/htc/android/locationpicker/PickerMain;)V

    goto :goto_1

    .line 1150
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerUtils;->stopTitleSearch()V

    .line 1151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1152
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v2, 0x8

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 1155
    const-string v1, "PickerMain"

    const-string v2, "setResult and finish when press back key from search dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1157
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_1

    .line 1163
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelGpsDisabledDialog(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/htc/android/locationpicker/PickerMain;->access$500(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 1166
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelWirelessDisabledDialogForGeo(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/htc/android/locationpicker/PickerMain;->access$700(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V

    .line 1169
    const-string v1, "PickerMain"

    const-string v2, "back key pressed on STATE_SHOWING_WIRELESS_DISABLED_DIALOG_FOR_GEO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1171
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_1

    .line 1174
    :pswitch_7
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$15;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->doCancelWirelessDisabledDialogForMap(Landroid/content/DialogInterface;)V
    invoke-static {v1, p1}, Lcom/htc/android/locationpicker/PickerMain;->access$900(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 1181
    :cond_2
    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 1182
    const/4 v0, 0x1

    goto :goto_1

    .line 1137
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

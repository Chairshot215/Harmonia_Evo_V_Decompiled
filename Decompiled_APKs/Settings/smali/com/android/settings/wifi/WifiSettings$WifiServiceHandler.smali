.class Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 968
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 972
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 974
    :sswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    .line 978
    const-string v2, "WifiSettings"

    const-string v3, "Failed to establish AsyncChannel connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsResult;

    .line 983
    .local v1, result:Landroid/net/wifi/WpsResult;
    if-eqz v1, :cond_0

    .line 984
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0921

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 987
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    sget-object v2, Lcom/android/settings/wifi/WifiSettings$4;->$SwitchMap$android$net$wifi$WpsResult$Status:[I

    iget-object v3, v1, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    invoke-virtual {v3}, Landroid/net/wifi/WpsResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 997
    iget-object v2, v1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 998
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0922

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1000
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 989
    :pswitch_0
    const v2, 0x7f0c0924

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 990
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 993
    :pswitch_1
    const v2, 0x7f0c0923

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 994
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 972
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

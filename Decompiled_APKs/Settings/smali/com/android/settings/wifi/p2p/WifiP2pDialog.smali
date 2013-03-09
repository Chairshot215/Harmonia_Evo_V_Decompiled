.class public Lcom/android/settings/wifi/p2p/WifiP2pDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDialog"

.field private static final WPS_DISPLAY:I = 0x1

.field private static final WPS_KEYPAD:I = -0x1

.field private static final WPS_PBC:I


# instance fields
.field mCreatedGroup:Z

.field mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceAddress:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWpsSetupIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 59
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mCreatedGroup:Z

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 70
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 74
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 75
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 76
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    packed-switch v1, :pswitch_data_0

    .line 89
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 96
    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 82
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0801cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x20900ee

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    .line 103
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v4, 0x7f08020d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    .line 105
    .local v2, mWpsSetup:Lcom/htc/widget/HtcSpinner;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setView(Landroid/view/View;)V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setInverseBackgroundForced(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, context:Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mCreatedGroup:Z

    if-eqz v3, :cond_1

    .line 113
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 128
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :goto_0
    const v3, 0x20900af

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    const v3, 0x7f0c0969

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setTitle(I)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v4, 0x7f08020b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v4, 0x7f08020c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    .line 135
    const/4 v3, -0x1

    const v4, 0x7f0c094f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    const/4 v3, -0x2

    const v4, 0x7f0c0952

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 145
    :cond_0
    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 147
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 148
    return-void

    .line 116
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    goto :goto_0
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const v2, 0x7f08020e

    .line 152
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    .line 154
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method setCreatedGroup(Z)V
    .locals 0
    .parameter "isCreated"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mCreatedGroup:Z

    .line 168
    return-void
.end method

.class Lcom/android/settings/vpn2/VpnDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# instance fields
.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

.field private mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/settings/vpn2/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Lcom/htc/widget/HtcSpinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"
    .parameter "editing"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 73
    iput-object p2, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    .line 75
    iput-boolean p4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    .line 76
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f0801a6

    const v5, 0x7f0801a3

    const v4, 0x7f0801a1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 313
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 314
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 317
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 325
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x20900ee

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 327
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x20900af

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 328
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 331
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    invoke-virtual {p1, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 336
    :cond_1
    return-void

    .line 313
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 319
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 320
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 321
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    move-object v2, v1

    goto :goto_1

    .line 330
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private validate(Z)Z
    .locals 3
    .parameter "editing"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 281
    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 286
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 287
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 286
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/16 v8, 0x20

    .line 292
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 293
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 295
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 297
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 298
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 300
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 302
    :cond_3
    const/4 v9, 0x0

    .line 308
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 305
    :catch_0
    move-exception v3

    .line 306
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 308
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 197
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 202
    return-void
.end method

.method getProfile()Lcom/android/settings/vpn2/VpnProfile;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/android/settings/vpn2/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v1, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 347
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 355
    iget v1, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    .line 387
    return-object v0

    .line 357
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 372
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 377
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "showOptions"

    .prologue
    .line 210
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040097

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 81
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/android/settings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f08007f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 88
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f08019e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    .line 89
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f08019f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 90
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801b1

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 91
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801b2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 92
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801ad

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 93
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801ae

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 94
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801af

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 95
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    .line 96
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 98
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 99
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    .line 100
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801a9

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    .line 101
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801aa

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    .line 102
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801b3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x20900ee

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v4, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 108
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x20900af

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v7, v7, Lcom/android/settings/vpn2/VpnProfile;->type:I

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-boolean v7, v7, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    const-string v7, "USRCERT_"

    const v8, 0x7f0c0936

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v9, v9, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    const-string v7, "CACERT_"

    const v8, 0x7f0c0d0c

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v9, v9, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    const-string v7, "USRCERT_"

    const v8, 0x7f0c0d0d

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v9, v9, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-boolean v7, v7, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 144
    invoke-direct {p0, v6}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v3

    .line 145
    .local v3, valid:Z
    iget-boolean v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    .line 147
    iget-boolean v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v4, :cond_3

    .line 148
    const v4, 0x7f0c0d11

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(I)V

    .line 151
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f08019d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v4, v4, Lcom/android/settings/vpn2/VpnProfile;->type:I

    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801ab

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, showOptions:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_1
    const v4, 0x7f0c0d0f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v10, v4, v6}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    .end local v2           #showOptions:Landroid/view/View;
    :goto_2
    const/4 v4, -0x2

    const v6, 0x7f0c0d0e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 184
    invoke-super {p0, v11}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0, v10}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v6, :cond_4

    .end local v3           #valid:Z
    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 193
    return-void

    .restart local v3       #valid:Z
    :cond_1
    move v4, v5

    .line 145
    goto :goto_0

    .line 162
    .restart local v2       #showOptions:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 169
    .end local v2           #showOptions:Landroid/view/View;
    :cond_3
    const v4, 0x7f0c0d12

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801b0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v4, 0x7f0c0d10

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v10, v4, v6}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 187
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v3

    goto :goto_3
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 216
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_0

    .line 217
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    .line 219
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    return-void
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
    .line 224
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 206
    return-void
.end method

.class public final Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 272
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 273
    const v1, 0x7f0c08b9

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 274
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 275
    const v1, 0x7f0c08c3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 276
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    const v1, 0x7f0c08c4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 278
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 280
    return-void
.end method

.method private createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 284
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 285
    const v1, 0x7f0c08b9

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 287
    const v1, 0x7f0c08c3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 288
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 289
    const v1, 0x7f0c08c4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 290
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 292
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .parameter "deviceManager"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 297
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 298
    const v2, 0x7f0c08b9

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 299
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 300
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 301
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 306
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 310
    .local v1, pinBytes:[B
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView(Lcom/htc/app/HtcAlertController$AlertParams;Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .parameter "p"
    .parameter "deviceName"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040014

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 193
    .local v7, view:Landroid/view/View;
    const v8, 0x7f080020

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 194
    .local v5, messageView1:Landroid/widget/TextView;
    const v8, 0x7f080026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 195
    .local v6, messageView2:Landroid/widget/TextView;
    const v8, 0x7f080025

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 196
    .local v0, alphanumericPin:Landroid/widget/CheckBox;
    const v8, 0x7f080023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 197
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 220
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 232
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return-object v7

    .line 205
    .restart local v7       #view:Landroid/view/View;
    :pswitch_0
    const v2, 0x7f0c08ba

    .line 206
    .local v2, messageId1:I
    const v3, 0x7f0c08be

    .line 208
    .local v3, messageId2:I
    const/16 v1, 0x10

    .line 225
    .local v1, maxLength:I
    :goto_1
    new-array v8, v12, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-virtual {p0, v2, v8}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, messageText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 229
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v12, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 212
    .end local v1           #maxLength:I
    .end local v2           #messageId1:I
    .end local v3           #messageId2:I
    .end local v4           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0c08bb

    .line 213
    .restart local v2       #messageId1:I
    const v3, 0x7f0c08bf

    .line 215
    .restart local v3       #messageId2:I
    const/4 v1, 0x6

    .line 216
    .restart local v1       #maxLength:I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .parameter "deviceManager"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 177
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 178
    const v1, 0x7f0c08b9

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 179
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Lcom/htc/app/HtcAlertController$AlertParams;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 180
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 181
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 182
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 183
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 186
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void
.end method

.method private createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 6
    .parameter "p"
    .parameter "deviceManager"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, name:Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 262
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received, not creating view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 245
    const v2, 0x7f0c08c0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, messageText:Ljava/lang/String;
    :goto_1
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 247
    .end local v0           #messageText:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c020a

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0c08c1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 258
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0c08c2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 362
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 327
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 356
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 330
    .local v1, pinBytes:[B
    if-eqz v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 337
    .end local v1           #pinBytes:[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 343
    .end local v0           #passkey:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 352
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    :cond_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 390
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 398
    if-eqz p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 372
    packed-switch p2, :pswitch_data_0

    .line 383
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 386
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x8000

    .line 91
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 161
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 103
    .local v2, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_1

    .line 104
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: BluetoothAdapter not supported by system"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 110
    .local v0, deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 111
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 113
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 152
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 120
    :pswitch_1
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 122
    .local v4, passkey:I
    if-ne v4, v7, :cond_2

    .line 123
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 127
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 125
    :cond_2
    const-string v5, "%06d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 132
    .end local v4           #passkey:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 137
    :pswitch_3
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    .local v3, pairingKey:I
    if-ne v3, v7, :cond_3

    .line 140
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :cond_3
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 144
    const-string v5, "%06d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 148
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "%04d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_3

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 365
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 368
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Button;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 173
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 394
    return-void
.end method

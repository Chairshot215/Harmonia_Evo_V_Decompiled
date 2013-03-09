.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Lcom/htc/preference/HtcPreference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mOnDeviceClickListener:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mPrefLeftButton:Landroid/view/View;

.field private mPrefRightButton:Landroid/view/View;

.field private mProfileIcons:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 74
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 76
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 80
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 89
    const v1, 0x7f04005f

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 95
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 367
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 368
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 389
    :goto_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 391
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 392
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 405
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .end local v4           #resId:I
    :goto_1
    return v4

    .line 371
    :sswitch_0
    const v4, 0x7f02005c

    goto :goto_1

    .line 374
    :sswitch_1
    const v4, 0x7f020056

    goto :goto_1

    .line 377
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 380
    :sswitch_3
    const v4, 0x7f02005a

    goto :goto_1

    .line 386
    :cond_1
    const-string v6, "BluetoothDevicePreference"

    const-string v7, "mBtClass is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 397
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    const v4, 0x7f020058

    goto :goto_1

    .line 401
    :cond_3
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 402
    const v4, 0x7f020059

    goto :goto_1

    :cond_4
    move v4, v5

    .line 405
    goto :goto_1

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 315
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 316
    .local v6, profileConnected:Z
    const/4 v0, 0x0

    .line 317
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 319
    .local v3, headsetNotConnected:Z
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 320
    .local v5, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 322
    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    invoke-interface {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    instance-of v7, v5, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v7, :cond_1

    .line 334
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 362
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 328
    .restart local v2       #connectionStatus:I
    .restart local v5       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v6, 0x1

    .line 329
    goto :goto_0

    .line 335
    :cond_1
    instance-of v7, v5, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 336
    const/4 v3, 0x1

    goto :goto_0

    .line 343
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_2
    if-eqz v6, :cond_6

    .line 344
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 345
    const v7, 0x7f0c07c4

    goto :goto_1

    .line 346
    :cond_3
    if-eqz v0, :cond_4

    .line 347
    const v7, 0x7f0c07c3

    goto :goto_1

    .line 348
    :cond_4
    if-eqz v3, :cond_5

    .line 349
    const v7, 0x7f0c07c2

    goto :goto_1

    .line 351
    :cond_5
    const v7, 0x7f0c07c1

    goto :goto_1

    .line 355
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 362
    const/4 v7, 0x0

    goto :goto_1

    .line 357
    :pswitch_3
    const v7, 0x7f0c07c9

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 234
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 236
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    .line 239
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 220
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 223
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 152
    const v4, 0x7f080027

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mProfileIcons:Landroid/widget/ImageView;

    .line 153
    const v4, 0x7f0800fb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefLeftButton:Landroid/view/View;

    .line 154
    const v4, 0x7f0800fc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefRightButton:Landroid/view/View;

    .line 158
    const-string v4, "bt_checkbox"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "bt_checkbox"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefLeftButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 166
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefLeftButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefLeftButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v1

    .line 170
    .local v1, iconResId:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mProfileIcons:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mProfileIcons:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mProfileIcons:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "item_background_holo_dark"

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, resId1:I
    if-eqz v2, :cond_2

    .line 177
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefLeftButton:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    .end local v1           #iconResId:I
    .end local v2           #resId1:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 185
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mPrefRightButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v4, 0x7f0800fd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, deviceDetails:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "item_background_holo_dark"

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, resId2:I
    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    :cond_3
    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x437f

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 202
    .end local v0           #deviceDetails:Landroid/view/View;
    .end local v3           #resId2:I
    :cond_4
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 203
    return-void

    .line 198
    .restart local v0       #deviceDetails:Landroid/view/View;
    .restart local v3       #resId2:I
    :cond_5
    sget v4, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    int-to-float v4, v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 207
    const v0, 0x7f0800fd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const v0, 0x7f0800fb

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnDeviceClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnDeviceClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 130
    .local v1, summaryResId:I
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 137
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIconVisibility(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 147
    return-void

    .line 133
    .end local v0           #iconResId:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    .restart local v0       #iconResId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onPrepareForRemoval()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 119
    return-void
.end method

.method public setOnDeviceClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnDeviceClickListener:Landroid/view/View$OnClickListener;

    .line 103
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 107
    return-void
.end method

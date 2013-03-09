.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/preference/HtcPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_TYPE_COUNT:I = 0x3


# instance fields
.field private final mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private final mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/android/settings/Settings;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v2, 0x0

    .line 1028
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->this$0:Lcom/android/settings/Settings;

    .line 1029
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1031
    iput-object p2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1043
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1044
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mObjects:Ljava/util/List;

    .line 1058
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1072
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1086
    new-instance v0, Lcom/android/settings/MobileDataEnabler;

    new-instance v1, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, v1}, Lcom/android/settings/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    .line 1100
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatAudioFeatureFlags;->getBeatAudioSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    new-instance v1, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, v1}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    .line 1119
    :goto_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v0, :cond_1

    .line 1120
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler;

    new-instance v1, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, v1}, Lcom/android/settings/wimax/WimaxEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    .line 1138
    :goto_1
    return-void

    .line 1104
    :cond_0
    iput-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    goto :goto_0

    .line 1122
    :cond_1
    iput-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->destroy()V

    .line 1313
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "position"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    .line 1004
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderType;->getHeaderType(Lcom/htc/preference/HtcPreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getPosition(Lcom/htc/preference/HtcPreferenceActivity$Header;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 972
    check-cast p1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getPosition(Lcom/htc/preference/HtcPreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    .line 1159
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderType;->getHeaderType(Lcom/htc/preference/HtcPreferenceActivity$Header;)I

    move-result v2

    .line 1160
    .local v2, headerType:I
    const/4 v8, 0x0

    .line 1162
    .local v8, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 1163
    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v9, 0x0

    invoke-direct {v3, p0, v9}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Lcom/android/settings/Settings$1;)V

    .line 1164
    .local v3, holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1196
    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1203
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1266
    :goto_2
    return-object v8

    .line 1166
    :pswitch_0
    new-instance v0, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;

    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;-><init>(Landroid/content/Context;)V

    .line 1168
    .local v0, cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    iput-object v0, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1169
    move-object v8, v0

    .line 1170
    goto :goto_0

    .line 1173
    .end local v0           #cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    :pswitch_1
    new-instance v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;-><init>(Landroid/content/Context;)V

    .line 1176
    .local v6, siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1177
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1178
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1179
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Lcom/htc/widget/HtcToggleButton;

    .line 1180
    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    .line 1181
    move-object v8, v6

    .line 1183
    invoke-virtual {v6, v1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->bindWrapHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0

    .line 1188
    .end local v6           #siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    :pswitch_2
    new-instance v4, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;

    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v4, iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    invoke-virtual {v4}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1191
    invoke-virtual {v4}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1192
    invoke-virtual {v4}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1193
    move-object v8, v4

    goto :goto_0

    .line 1198
    .end local v3           #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    .end local v4           #iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    :cond_0
    move-object v8, p2

    .line 1199
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto :goto_1

    .line 1205
    :pswitch_3
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1210
    :pswitch_4
    iget-wide v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v11, 0x7f080236

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 1211
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v10, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/view/View;)V

    .line 1233
    :cond_1
    :goto_3
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 1234
    iget-object v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1235
    const-string v9, " "

    iput-object v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 1244
    :cond_2
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1248
    .local v5, res:Landroid/content/res/Resources;
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v10, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1257
    .local v7, summary:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1258
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1259
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1212
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v7           #summary:Ljava/lang/CharSequence;
    :cond_3
    iget-wide v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v11, 0x7f080237

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 1213
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v10, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/view/View;)V

    goto :goto_3

    .line 1214
    :cond_4
    iget-wide v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v11, 0x7f080238

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 1215
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    iget-object v10, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/settings/MobileDataEnabler;->setSwitch(Landroid/view/View;)V

    .line 1216
    sget-boolean v9, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MOBILE_NETWORK_SETTINGS:Z

    if-eqz v9, :cond_1

    .line 1217
    const v9, 0x7f08010f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    .line 1219
    :cond_5
    iget-wide v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v11, 0x7f08023f

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 1220
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    if-eqz v9, :cond_1

    .line 1221
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    iget-object v10, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->setSwitch(Landroid/view/View;)V

    .line 1222
    const v9, 0x7f08010f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 1224
    :cond_6
    iget-wide v9, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v11, 0x7f080239

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 1225
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v9, :cond_1

    .line 1226
    iget-object v9, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v10, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitch(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1261
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v7       #summary:Ljava/lang/CharSequence;
    :cond_7
    iget-object v9, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1300
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1301
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->pause()V

    .line 1302
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->pause()V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->pause()V

    .line 1308
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1281
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->resume()V

    .line 1283
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->resume()V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBeatsSwitchEnabler:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->resume()V

    .line 1296
    :cond_1
    return-void
.end method

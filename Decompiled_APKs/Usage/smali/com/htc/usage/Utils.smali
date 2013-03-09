.class public Lcom/htc/usage/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFinalResId(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, string:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/high16 p1, 0x7f05

    .line 126
    :cond_0
    return p1
.end method

.method public static getFinalString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "str_id"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, string:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/usage/Utils;->getFinalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFinalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 114
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 115
    const-string v0, "Wi-Fi"

    const-string v1, "WLAN"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_0
    return-object p0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .parameter "cm"

    .prologue
    const v8, 0x7f05000d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 88
    .local v2, usbAvailable:Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 89
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 91
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 104
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_0
    move v2, v7

    .line 87
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_1
    move v4, v7

    .line 88
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_2
    move v0, v7

    .line 89
    goto :goto_2

    .line 93
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 96
    goto :goto_3

    .line 97
    :cond_5
    if-eqz v4, :cond_6

    .line 98
    const v6, 0x7f05000a

    goto :goto_3

    .line 99
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 100
    const v6, 0x7f05000c

    goto :goto_3

    .line 101
    :cond_7
    if-eqz v2, :cond_8

    .line 102
    const v6, 0x7f050009

    goto :goto_3

    .line 104
    :cond_8
    const v6, 0x7f05000b

    goto :goto_3
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 9
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 64
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 67
    invoke-virtual {p2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 70
    .local v3, paddingSide:I
    const v5, 0x1050024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 74
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 76
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 63
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v2

    .line 73
    goto :goto_1
.end method

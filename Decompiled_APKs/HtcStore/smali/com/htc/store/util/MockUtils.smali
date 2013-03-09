.class public Lcom/htc/store/util/MockUtils;
.super Ljava/lang/Object;
.source "MockUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/store/util/MockUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/MockUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadTabImages()V
    .locals 13

    .prologue
    const/16 v4, 0x30

    const/4 v12, 0x4

    .line 88
    const/16 v6, 0x64

    .local v6, i:I
    :goto_0
    const/16 v5, 0x320

    if-ge v6, v5, :cond_3

    .line 89
    const/4 v8, 0x1

    .local v8, j:I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 90
    const-string v1, ""

    .line 91
    .local v1, status:Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 102
    :goto_2
    const-string v2, ""

    .line 103
    .local v2, order:Ljava/lang/String;
    const/16 v5, 0x64

    if-lt v6, v5, :cond_1

    const/16 v5, 0x1f4

    if-ge v6, v5, :cond_1

    .line 104
    const-string v2, "primaryTabs"

    .line 108
    :goto_3
    const-string v3, ""

    .line 109
    .local v3, onlineID:Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 132
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    add-int v7, v6, v8

    .line 134
    .local v7, id:I
    invoke-static {v7}, Lcom/htc/store/util/MockUtils;->getImgURL(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, url:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/util/MockUtils;->TAG:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "id = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "    path = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    invoke-static {v5, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v4

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 89
    .end local v0           #url:Ljava/lang/String;
    .end local v7           #id:I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 93
    .end local v2           #order:Ljava/lang/String;
    .end local v3           #onlineID:Ljava/lang/String;
    :pswitch_0
    const-string v1, "on"

    .line 94
    goto :goto_2

    .line 96
    :pswitch_1
    const-string v1, "overlay"

    .line 97
    goto :goto_2

    .line 99
    :pswitch_2
    const-string v1, "rest"

    goto :goto_2

    .line 106
    .restart local v2       #order:Ljava/lang/String;
    :cond_1
    const-string v2, "secondaryTabs"

    goto :goto_3

    .line 111
    .restart local v3       #onlineID:Ljava/lang/String;
    :sswitch_0
    const-string v3, "activity"

    .line 112
    goto :goto_4

    .line 114
    :sswitch_1
    const-string v3, "comments"

    .line 115
    goto :goto_4

    .line 117
    :sswitch_2
    const-string v3, "home"

    .line 118
    goto :goto_4

    .line 120
    :sswitch_3
    const-string v3, "operator"

    .line 121
    goto :goto_4

    .line 123
    :sswitch_4
    const-string v3, "comments"

    .line 124
    goto :goto_4

    .line 126
    :sswitch_5
    const-string v3, "home"

    .line 127
    goto :goto_4

    .line 129
    :sswitch_6
    const-string v3, "similar"

    goto :goto_4

    .line 88
    .end local v1           #status:Ljava/lang/String;
    .end local v2           #order:Ljava/lang/String;
    .end local v3           #onlineID:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x64

    goto :goto_0

    .line 140
    .end local v8           #j:I
    :cond_3
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method

.method public static getBatteryContentType()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x5

    return v0
.end method

.method public static getBatteryDetailItemString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "{  \"appId\": \"9c414660-838b-4efa-b27a-ae998d058623\",  \"appPackageName\": \"com.htc.rosiewidgets.battery\",  \"appSource\": \"HTC\",  \"appType\": \"widget-android\",  \"author\": \"\",  \"contentCategory\": \"Widget\",  \"contentSize\": \"2 MB\",  \"displayName\": \"Battery\",  \"htcVersion\": \"3.01\",  \"intentTrigger\": \"\",  \"itemType\": \"Widget\",  \"longDescription\": \"\",  \"previewImageCount\": 1,  \"previewImages\": [\"http://static1.dev.csh.tc/stores/images/wid_9c414660-838b-4efa-b27a-ae998d058623_480x800_all-ALL_1.jpg\"],  \"previewImagesLandscape\": [\"http://static1.dev.csh.tc/stores/images/wid_9c414660-838b-4efa-b27a-ae998d058623_480x800_all-ALL_1.jpg\"],  \"price\": \"0.00\",  \"productGUID\": \"9c414660-838b-4efa-b27a-ae998d058623\",  \"productID\": \"prod10817\",  \"publishedDate\": \"1313542800\",  \"shortDescription\": \"Use this widget to keep track of battery usage right on your Home screen. Tap the widget to see more battery information.\n\nVersion: 3.01\nRelease date: Aug. 16, 2011\nSize: 2 MB\",  \"skuID\": \"sku1592713\",  \"thumbNailImage\": \"http://static1.dev.csh.tc/stores/icons/wid_9c414660-838b-4efa-b27a-ae998d058623_all-ALL_0.png\",  \"ttl\": \"1315213313\",  \"version\": \"4\",  \"viewType\": \"Widget\"}"

    return-object v0
.end method

.method public static getBatteryOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "prod10817"

    return-object v0
.end method

.method public static getBatteryPurchaseItemString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string v0, "{  \"createdTime\": \"1315216754\",  \"downloadURL\": \"http://ota-test.htc.com/inventory/android/apps/1181025/1181026.apk\",  \"orderID\": \"o10304\",  \"productID\": \"prod10817\"}"

    return-object v0
.end method

.method public static getDownloadUrlAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "http://ota-test.htc.com/inventory/android/sound/1126662/1126664.mp3"

    return-object v0
.end method

.method public static getDownloadUrlDayChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "http://ota-test.htc.com/inventory/android/apps/1151949/1151952.apk"

    return-object v0
.end method

.method public static getFeatureURL(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    .line 148
    const-string v0, "http://10.5.34.22/images/feat"

    .line 149
    .local v0, baseURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getImgURL(I)Ljava/lang/String;
    .locals 4
    .parameter "tabIndex"

    .prologue
    .line 10
    const-string v1, ""

    .line 11
    .local v1, result:Ljava/lang/String;
    const-string v0, "http://10.5.34.22/images/tabs/"

    .line 13
    .local v0, baseURL:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 84
    :goto_0
    return-object v1

    .line 15
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_primaryTabs_activity.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    goto :goto_0

    .line 18
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_primaryTabs_activity.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    goto :goto_0

    .line 21
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_primaryTabs_activity.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    goto :goto_0

    .line 25
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_primaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    goto :goto_0

    .line 28
    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_primaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    goto :goto_0

    .line 31
    :sswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_primaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    goto :goto_0

    .line 35
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_primaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    goto/16 :goto_0

    .line 38
    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_primaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    goto/16 :goto_0

    .line 41
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_primaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    goto/16 :goto_0

    .line 45
    :sswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_primaryTabs_operator.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    goto/16 :goto_0

    .line 48
    :sswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_primaryTabs_operator.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    goto/16 :goto_0

    .line 51
    :sswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_primaryTabs_operator.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    goto/16 :goto_0

    .line 55
    :sswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_secondaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    goto/16 :goto_0

    .line 58
    :sswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_secondaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    goto/16 :goto_0

    .line 61
    :sswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_secondaryTabs_comments.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    goto/16 :goto_0

    .line 65
    :sswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_secondaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    goto/16 :goto_0

    .line 68
    :sswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_secondaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    goto/16 :goto_0

    .line 71
    :sswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_secondaryTabs_home.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    goto/16 :goto_0

    .line 75
    :sswitch_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_on_secondaryTabs_similar.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    goto/16 :goto_0

    .line 78
    :sswitch_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_overlay_secondaryTabs_similar.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    goto/16 :goto_0

    .line 81
    :sswitch_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "resource_id_rest_secondaryTabs_similar.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 13
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_8
        0x191 -> :sswitch_9
        0x192 -> :sswitch_a
        0x193 -> :sswitch_b
        0x1f5 -> :sswitch_c
        0x1f6 -> :sswitch_d
        0x1f7 -> :sswitch_e
        0x259 -> :sswitch_f
        0x25a -> :sswitch_10
        0x25b -> :sswitch_11
        0x2bd -> :sswitch_12
        0x2be -> :sswitch_13
        0x2bf -> :sswitch_14
    .end sparse-switch
.end method

.method public static getItemItemAlarm()Lcom/htc/store/module/vo/ItemItem;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/htc/store/module/vo/ItemItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 159
    .local v0, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v0, v4, v5}, Lcom/htc/store/module/vo/ItemItem;->setCategoryId(J)V

    .line 160
    const-string v1, "sku60105"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSkuId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 162
    const-string v1, "prod50009"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineId(Ljava/lang/String;)V

    .line 163
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 164
    const-string v1, "Awakening"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 165
    const-string v1, "http://static1.dev.csh.tc/stores/icons/Alarm_80x80.png"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 166
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTrialContentURL(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineOrder(I)V

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePrice(F)V

    .line 169
    const-string v1, "Sound Set Default Alarm Clock"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 170
    const-string v1, "Sound FX"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineGenres(Ljava/lang/String;)V

    .line 171
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineVersionName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineVersionCode(I)V

    .line 173
    const-string v1, "332 KB"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSize(Ljava/lang/String;)V

    .line 174
    const-string v1, "HTC Innovation"

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineAuthor(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSource(I)V

    .line 176
    const-wide/32 v1, 0x4b587a00

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTimeStampPublished(J)V

    .line 177
    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineActionTypeOnClick(I)V

    .line 178
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineViewType(I)V

    .line 179
    invoke-virtual {v0, v4, v5}, Lcom/htc/store/module/vo/ItemItem;->setOnlineDownloadCount(J)V

    .line 180
    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/ItemItem;->setStatus(I)V

    .line 181
    return-object v0
.end method

.method public static getNaviURL(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    .line 153
    const-string v0, "http://10.5.34.22/images/navi"

    .line 154
    .local v0, baseURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageNameDayChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "com.htc.rosiewidgets.daychallenge"

    return-object v0
.end method

.method public static getPromoURL(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    .line 143
    const-string v0, "http://10.5.34.22/images/promo"

    .line 144
    .local v0, baseURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

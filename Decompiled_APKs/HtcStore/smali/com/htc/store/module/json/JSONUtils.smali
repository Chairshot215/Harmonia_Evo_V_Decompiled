.class public Lcom/htc/store/module/json/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalItemType(Ljava/lang/String;)I
    .locals 2
    .parameter "appType"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, result:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, "Alarm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x2

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const-string v1, "Application"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const/4 v0, 0x6

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "Notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    const/4 v0, 0x3

    goto :goto_0

    .line 94
    :cond_3
    const-string v1, "Ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    const/4 v0, 0x4

    goto :goto_0

    .line 96
    :cond_4
    const-string v1, "Scene"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    const/16 v0, 0x8

    goto :goto_0

    .line 98
    :cond_5
    const-string v1, "Skin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    const/16 v0, 0x9

    goto :goto_0

    .line 100
    :cond_6
    const-string v1, "Soundset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_7
    const-string v1, "Wallpaper"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    const/16 v0, 0xa

    goto :goto_0

    .line 104
    :cond_8
    const-string v1, "Widget"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getLocalItemTypeString(I)Ljava/lang/String;
    .locals 2
    .parameter "localType"

    .prologue
    .line 112
    const-string v0, ""

    .line 113
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 114
    const-string v0, "Alarm"

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const/4 v1, 0x6

    if-ne p0, v1, :cond_2

    .line 116
    const-string v0, "Application"

    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 118
    const-string v0, "Notification"

    goto :goto_0

    .line 119
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 120
    const-string v0, "Ringtone"

    goto :goto_0

    .line 121
    :cond_4
    const/16 v1, 0x8

    if-ne p0, v1, :cond_5

    .line 122
    const-string v0, "Scene"

    goto :goto_0

    .line 123
    :cond_5
    const/16 v1, 0x9

    if-ne p0, v1, :cond_6

    .line 124
    const-string v0, "Skin"

    goto :goto_0

    .line 125
    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    .line 126
    const-string v0, "Soundset"

    goto :goto_0

    .line 127
    :cond_7
    const/16 v1, 0xa

    if-ne p0, v1, :cond_8

    .line 128
    const-string v0, "Wallpaper"

    goto :goto_0

    .line 129
    :cond_8
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 130
    const-string v0, "Widget"

    goto :goto_0
.end method

.method public static getOnlineActionType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, result:I
    const-string v1, "navlistURI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    const/16 v0, 0x8

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    const-string v1, "categorylistURI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    const/4 v0, 0x3

    goto :goto_0

    .line 15
    :cond_2
    const-string v1, "subcategory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    const/4 v0, 0x4

    goto :goto_0

    .line 17
    :cond_3
    const-string v1, "intent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    const/4 v0, 0x7

    goto :goto_0

    .line 19
    :cond_4
    const-string v1, "itemlistURI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    const/4 v0, 0x5

    goto :goto_0

    .line 21
    :cond_5
    const-string v1, "detailURI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    const/4 v0, 0x6

    goto :goto_0

    .line 23
    :cond_6
    const-string v1, "home"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :cond_7
    const-string v1, "operator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getOnlineContentSource(Ljava/lang/String;)I
    .locals 2
    .parameter "source"

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, result:I
    const-string v1, "Android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string v1, "HTC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "wozai"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getOnlineDetailPageType(Ljava/lang/String;)I
    .locals 2
    .parameter "pageType"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, result:I
    const-string v1, "Alarm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const/16 v0, 0x66

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    const-string v1, "Application"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const/16 v0, 0x6a

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "Notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    const/16 v0, 0x67

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "Plugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    const/16 v0, 0x6b

    goto :goto_0

    .line 51
    :cond_4
    const-string v1, "Ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    const/16 v0, 0x68

    goto :goto_0

    .line 53
    :cond_5
    const-string v1, "Scene"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    const/16 v0, 0x6c

    goto :goto_0

    .line 55
    :cond_6
    const-string v1, "Skin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    const/16 v0, 0x6d

    goto :goto_0

    .line 57
    :cond_7
    const-string v1, "Soundset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 58
    const/16 v0, 0x65

    goto :goto_0

    .line 59
    :cond_8
    const-string v1, "Wallpaper"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 60
    const/16 v0, 0x6e

    goto :goto_0

    .line 61
    :cond_9
    const-string v1, "Widget"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 62
    const/16 v0, 0x69

    goto :goto_0

    .line 63
    :cond_a
    const-string v1, "empty"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 64
    const/16 v0, 0xc9

    goto :goto_0

    .line 65
    :cond_b
    const-string v1, "commentLike"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 66
    const/16 v0, 0xcb

    goto :goto_0

    .line 67
    :cond_c
    const-string v1, "downloadLike"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/16 v0, 0xcc

    goto/16 :goto_0
.end method

.method public static getOnlineTabs(Ljava/lang/String;)I
    .locals 2
    .parameter "groupString"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, result:I
    const-string v1, "primaryTabs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    const-string v1, "secondaryTabs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getV1AppType(I)Ljava/lang/String;
    .locals 2
    .parameter "localType"

    .prologue
    .line 136
    const-string v0, ""

    .line 137
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 138
    const-string v0, "alarm-android"

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    const/4 v1, 0x6

    if-ne p0, v1, :cond_2

    .line 140
    const-string v0, "application-android"

    goto :goto_0

    .line 141
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 142
    const-string v0, "notification-android"

    goto :goto_0

    .line 143
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 144
    const-string v0, "ringtone-android"

    goto :goto_0

    .line 145
    :cond_4
    const/16 v1, 0x8

    if-ne p0, v1, :cond_5

    .line 146
    const-string v0, "scene-android"

    goto :goto_0

    .line 147
    :cond_5
    const/16 v1, 0x9

    if-ne p0, v1, :cond_6

    .line 148
    const-string v0, "skin-android"

    goto :goto_0

    .line 149
    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    .line 150
    const-string v0, "soundset-android"

    goto :goto_0

    .line 151
    :cond_7
    const/16 v1, 0xa

    if-ne p0, v1, :cond_8

    .line 152
    const-string v0, "wallpaper-android"

    goto :goto_0

    .line 153
    :cond_8
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 154
    const-string v0, "widget-android"

    goto :goto_0
.end method

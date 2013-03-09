.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhoneHardwarePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getHardwareSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c049a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0c049a

    return v0
.end method

.method public getHardwareSummary()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 91
    const/4 v7, 0x1

    .line 92
    .local v7, wifiStatus:Z
    const/4 v0, 0x1

    .line 93
    .local v0, bluetoothStatus:Z
    const/4 v8, 0x0

    .line 95
    .local v8, wimaxStatus:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 97
    .local v4, mContext:Landroid/content/Context;
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    .line 100
    .local v10, words:[Ljava/lang/String;
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportWiFi:Z

    if-eqz v11, :cond_1

    .line 101
    const/4 v7, 0x1

    .line 106
    :goto_0
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_WIMAX:Z

    if-eqz v11, :cond_2

    .line 107
    const/4 v8, 0x1

    .line 112
    :goto_1
    const/4 v1, 0x0

    .line 113
    .local v1, count:I
    if-eqz v7, :cond_4

    .line 114
    const v11, 0x7f0c0a0a

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, word:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput-object v9, v10, v1

    .line 117
    .end local v9           #word:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    .line 118
    const v11, 0x7f0c0a0b

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    .restart local v9       #word:Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object v9, v10, v2

    move v2, v1

    .line 121
    .end local v1           #count:I
    .end local v9           #word:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_0
    if-eqz v8, :cond_3

    .line 122
    const v11, 0x7f0c045d

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 123
    .restart local v9       #word:Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object v9, v10, v2

    .line 126
    .end local v9           #word:Ljava/lang/String;
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 144
    const-string v3, "The hardware summary in about phone is illegal."

    .line 145
    .local v3, e:Ljava/lang/String;
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 103
    .end local v1           #count:I
    .end local v3           #e:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 109
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 128
    .restart local v1       #count:I
    :pswitch_0
    const v5, 0x7f0c006b

    .line 129
    .local v5, resId:I
    new-array v11, v14, [Ljava/lang/Object;

    aget-object v12, v10, v13

    aput-object v12, v11, v13

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, summary:Ljava/lang/String;
    :goto_4
    return-object v6

    .line 132
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    :pswitch_1
    const v5, 0x7f0c006c

    .line 133
    .restart local v5       #resId:I
    new-array v11, v12, [Ljava/lang/Object;

    aget-object v12, v10, v13

    aput-object v12, v11, v13

    aget-object v12, v10, v14

    aput-object v12, v11, v14

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_4

    .line 140
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f0c006d

    .line 141
    .restart local v5       #resId:I
    new-array v11, v12, [Ljava/lang/Object;

    aget-object v12, v10, v13

    aput-object v12, v11, v13

    aget-object v12, v10, v14

    aput-object v12, v11, v14

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_4

    .end local v1           #count:I
    .end local v5           #resId:I
    .end local v6           #summary:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_3
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_3

    :cond_4
    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_2

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/android/htcdialer/util/KeyEventUtils;
.super Ljava/lang/Object;
.source "KeyEventUtils.java"


# static fields
.field private static final CHACHA_ATT:Z

.field public static final CHARACTERS:[C

.field private static SEARCH_CHAR_MAX:I

.field private static SEARCH_CHAR_MIN:I

.field public static sSwichKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 15
    const/16 v0, 0x20

    sput v0, Lcom/android/htcdialer/util/KeyEventUtils;->SEARCH_CHAR_MIN:I

    .line 16
    const/16 v0, 0x7e

    sput v0, Lcom/android/htcdialer/util/KeyEventUtils;->SEARCH_CHAR_MAX:I

    .line 18
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->CHARACTERS:[C

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string v0, "ro.cid"

    const-string v1, "11111111"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CWS__001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/util/KeyEventUtils;->CHACHA_ATT:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    .line 26
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xda

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/android/htcdialer/util/KeyEventUtils;->isChaChaAttCid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x70t 0x0t
        0x77t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeKeyCode(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 13
    .parameter "event"
    .parameter "code"

    .prologue
    .line 77
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 81
    .local v0, newEvent:Landroid/view/KeyEvent;
    return-object v0
.end method

.method public static checkKeyCodeSwitch(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 3
    .parameter "event"

    .prologue
    .line 37
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 39
    .restart local p0
    :cond_1
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/android/htcdialer/util/KeyEventUtils;->sSwichKeyCodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/htcdialer/util/KeyEventUtils;->changeKeyCode(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAppendingString(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 4
    .parameter "event"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 96
    .local v0, keyCode:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 97
    const/16 v1, 0x1d

    if-gt v1, v0, :cond_0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x1d

    sget-object v3, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_A_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 102
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_COMMA_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_TAB_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_FUNC_1_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :sswitch_2
    invoke-static {}, Lcom/android/htcdialer/util/KeyEventUtils;->isChaChaAttCid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_COMMA_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_COMMA_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 117
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_COMMA_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x1d

    sget-object v3, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_A_Espresso:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x37 -> :sswitch_2
        0x3d -> :sswitch_0
        0x3f -> :sswitch_1
        0xd8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getLableInLayer2(Landroid/view/KeyEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNumericValue(Landroid/view/KeyEvent;)I
    .locals 7
    .parameter "event"

    .prologue
    .line 85
    const/4 v5, 0x2

    new-array v3, v5, [C

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v6

    aput-char v6, v3, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 86
    .local v3, lables:[C
    move-object v0, v3

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v1, v0, v2

    .line 87
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    .line 91
    .end local v1           #c:C
    :goto_1
    return v5

    .line 86
    .restart local v1       #c:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1           #c:C
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static getPhoneLable(Landroid/view/KeyEvent;Z)I
    .locals 12
    .parameter "event"
    .parameter "alt"

    .prologue
    const/4 v10, 0x0

    .line 53
    const/4 v9, 0x2

    new-array v6, v9, [C

    .line 54
    .local v6, lables:[C
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    :goto_0
    aput-char v9, v6, v10

    .line 55
    const/4 v11, 0x1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v9

    int-to-char v9, v9

    :goto_1
    aput-char v9, v6, v11

    .line 56
    move-object v1, v6

    .local v1, arr$:[C
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[C
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-char v3, v1, v5

    .line 57
    .local v3, c:C
    sget-object v2, Lcom/android/htcdialer/util/KeyEventUtils;->CHARACTERS:[C

    .local v2, arr$:[C
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v8, :cond_3

    aget-char v0, v2, v4

    .line 58
    .local v0, accept:C
    if-ne v0, v3, :cond_2

    .line 63
    .end local v0           #accept:C
    .end local v2           #arr$:[C
    .end local v3           #c:C
    .end local v4           #i$:I
    .end local v8           #len$:I
    :goto_4
    return v3

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v9

    int-to-char v9, v9

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    goto :goto_1

    .line 57
    .restart local v0       #accept:C
    .restart local v2       #arr$:[C
    .restart local v3       #c:C
    .restart local v4       #i$:I
    .restart local v8       #len$:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 56
    .end local v0           #accept:C
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_2

    .end local v2           #arr$:[C
    .end local v3           #c:C
    .end local v8           #len$:I
    :cond_4
    move v3, v10

    .line 63
    goto :goto_4
.end method

.method public static isChaChaAttCid()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/htcdialer/util/KeyEventUtils;->CHACHA_ATT:Z

    return v0
.end method

.method public static isSearchable(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x2

    new-array v3, v7, [C

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v7

    aput-char v7, v3, v6

    invoke-static {p0}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v7

    int-to-char v7, v7

    aput-char v7, v3, v5

    .line 68
    .local v3, lables:[C
    move-object v0, v3

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v1, v0, v2

    .line 69
    .local v1, c:C
    sget v7, Lcom/android/htcdialer/util/KeyEventUtils;->SEARCH_CHAR_MIN:I

    if-lt v1, v7, :cond_0

    sget v7, Lcom/android/htcdialer/util/KeyEventUtils;->SEARCH_CHAR_MAX:I

    if-gt v1, v7, :cond_0

    .line 73
    .end local v1           #c:C
    :goto_1
    return v5

    .line 68
    .restart local v1       #c:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #c:C
    :cond_1
    move v5, v6

    .line 73
    goto :goto_1
.end method

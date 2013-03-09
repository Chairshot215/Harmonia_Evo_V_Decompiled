.class public Lcom/google/android/gm/utils/LabelColorUtils;
.super Ljava/lang/Object;
.source "LabelColorUtils.java"


# static fields
.field public static ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static CUSTOM_BACKGROUND_COLOR:Ljava/lang/String;

.field public static CUSTOM_COLOR_INDEX:Ljava/lang/String;

.field public static CUSTOM_TEXT_COLOR:Ljava/lang/String;

.field private static final DEFAULT_COLORS:[Ljava/lang/String;

.field public static DEFAULT_COLOR_ID:I

.field private static final LABEL_COLORS:[[Ljava/lang/String;

.field private static final MUTED_COLORS:[I

.field private static final NUM_COLORS:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 16
    const-string v0, "background_color"

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_BACKGROUND_COLOR:Ljava/lang/String;

    .line 18
    const-string v0, "color_index"

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_COLOR_INDEX:Ljava/lang/String;

    .line 20
    const-string v0, "text_color"

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_TEXT_COLOR:Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLOR_ID:I

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "#eeeeee"

    aput-object v1, v0, v5

    const-string v1, "#888888"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLORS:[Ljava/lang/String;

    .line 77
    const/16 v0, 0x19

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "#f1f5ec"

    aput-object v2, v1, v5

    const-string v2, "#006633"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "#dee5f2"

    aput-object v2, v1, v5

    const-string v2, "#5a6986"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "#e0ecff"

    aput-object v2, v1, v5

    const-string v2, "#206cff"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#dfe2ff"

    aput-object v3, v2, v5

    const-string v3, "#0000cc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#e0d5f9"

    aput-object v3, v2, v5

    const-string v3, "#5229a3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fde9f4"

    aput-object v3, v2, v5

    const-string v3, "#854f61"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ffe3e3"

    aput-object v3, v2, v5

    const-string v3, "#cc0000"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fff0e1"

    aput-object v3, v2, v5

    const-string v3, "#ec7000"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#fadcb3"

    aput-object v3, v2, v5

    const-string v3, "#b36d00"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f3e7b3"

    aput-object v3, v2, v5

    const-string v3, "#ab8b00"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ffffd4"

    aput-object v3, v2, v5

    const-string v3, "#636330"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f9ffef"

    aput-object v3, v2, v5

    const-string v3, "#64992c"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#f1f5ec"

    aput-object v3, v2, v5

    const-string v3, "#006633"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#5a6986"

    aput-object v3, v2, v5

    const-string v3, "#dee5f2"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#206cff"

    aput-object v3, v2, v5

    const-string v3, "#e0ecff"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#0000cc"

    aput-object v3, v2, v5

    const-string v3, "#dfe2ff"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#5229a3"

    aput-object v3, v2, v5

    const-string v3, "#e0d5f9"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#854f61"

    aput-object v3, v2, v5

    const-string v3, "#fde9f4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#cc0000"

    aput-object v3, v2, v5

    const-string v3, "#ffe3e3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ec7000"

    aput-object v3, v2, v5

    const-string v3, "#fff0e1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#b36d00"

    aput-object v3, v2, v5

    const-string v3, "#fadcb3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#ab8b00"

    aput-object v3, v2, v5

    const-string v3, "#f3e7b3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#636330"

    aput-object v3, v2, v5

    const-string v3, "#ffffd4"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#64992c"

    aput-object v3, v2, v5

    const-string v3, "#f9ffef"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "#006633"

    aput-object v3, v2, v5

    const-string v3, "#f1f5ec"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->LABEL_COLORS:[[Ljava/lang/String;

    .line 105
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->MUTED_COLORS:[I

    .line 107
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->LABEL_COLORS:[[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/google/android/gm/utils/LabelColorUtils;->NUM_COLORS:I

    return-void

    .line 105
    nop

    :array_0
    .array-data 0x4
        0x33t 0x66t 0x0t 0xfft
        0x33t 0x66t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateCustomLabelColor(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;)V
    .locals 4
    .parameter "account"
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 36
    sget-object v1, Lcom/google/android/gm/utils/LabelColorUtils;->ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .local v0, customLabelColors:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0           #customLabelColors:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    .restart local v0       #customLabelColors:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/gm/utils/LabelColorUtils;->ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->backgroundColor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->textColor:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static getDefaultLabelBackgroundColor()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->LABEL_COLORS:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLabelColorInts(ILjava/lang/String;)[I
    .locals 5
    .parameter "labelId"
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 139
    .local v0, colorInts:[I
    invoke-static {p0, p1}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorStrings(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, colorStrings:[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    .line 142
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    .line 144
    return-object v0
.end method

.method public static getLabelColorInts(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .parameter "labelIdString"
    .parameter "account"

    .prologue
    .line 149
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, labelId:I
    invoke-static {v1, p1}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorInts(ILjava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 152
    .end local v1           #labelId:I
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLabelColorStrings(ILjava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "labelId"
    .parameter "account"

    .prologue
    .line 110
    sget v2, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLOR_ID:I

    if-ne p0, v2, :cond_1

    .line 111
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLORS:[Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    if-gez p0, :cond_3

    .line 114
    sget-object v2, Lcom/google/android/gm/utils/LabelColorUtils;->ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 116
    .local v1, customLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    .line 118
    .local v0, colors:[Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLORS:[Ljava/lang/String;

    goto :goto_0

    .line 116
    .end local v0           #colors:[Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLORS:[Ljava/lang/String;

    goto :goto_1

    .line 121
    .end local v1           #customLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    sget v2, Lcom/google/android/gm/utils/LabelColorUtils;->NUM_COLORS:I

    if-lt p0, v2, :cond_4

    .line 122
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->DEFAULT_COLORS:[Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_4
    sget-object v2, Lcom/google/android/gm/utils/LabelColorUtils;->LABEL_COLORS:[[Ljava/lang/String;

    aget-object v0, v2, p0

    goto :goto_0
.end method

.method public static getMutedColorInts()[I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/gm/utils/LabelColorUtils;->MUTED_COLORS:[I

    return-object v0
.end method

.method public static getTransparentColor(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 157
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static instantiateCustomLabelColors(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 8
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    .local v1, customLabelColors:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_COLOR_INDEX:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, indexCol:I
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, backgroundColorCol:I
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_TEXT_COLOR:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, textColorCol:I
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->ACCOUNT_CUSTOM_LABEL_COLORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v0           #backgroundColorCol:I
    .end local v1           #customLabelColors:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2           #indexCol:I
    .end local v3           #textColorCol:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    return-void
.end method

.class public abstract Lcom/htc/android/htcime/XT9IME/LatinIM;
.super Ljava/lang/Object;
.source "LatinIM.java"


# static fields
.field protected static final DEBUG_DUMP:Z = false

.field private static final MAX_COUNT_SC_ALLOWABLE_ERROR:I = 0x1

.field private static final MAX_COUNT_SC_ALLOWABLE_OMISSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LatinIM"

.field protected static sFeature_QWERTYStyle:I

.field private static sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

.field private static sQW_KDBMAP:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_BUL:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_DAN:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_ENG:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_FRA:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_GER:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_GRC:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_NOR:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_RUS:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_RUS_HW:Ljava/util/HashMap;
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

.field private static sQW_KDBMAP_SWE:Ljava/util/HashMap;
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


# instance fields
.field mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sFeature_QWERTYStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 24
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    return-void
.end method

.method public static isWordComponent(I)Z
    .locals 1
    .parameter "unicode"

    .prologue
    .line 181
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected build_QW_KDBMAP(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 73
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_ENG:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapENG()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_ENG:Ljava/util/HashMap;

    .line 76
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GER:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapGER()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GER:Ljava/util/HashMap;

    .line 79
    :cond_1
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_FRA:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapFRA()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_FRA:Ljava/util/HashMap;

    .line 82
    :cond_2
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GRC:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 83
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapGRC()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GRC:Ljava/util/HashMap;

    .line 85
    :cond_3
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_DAN:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 86
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapDAN()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_DAN:Ljava/util/HashMap;

    .line 88
    :cond_4
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_SWE:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 89
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapSWE()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_SWE:Ljava/util/HashMap;

    .line 91
    :cond_5
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_NOR:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 92
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapNOR()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_NOR:Ljava/util/HashMap;

    .line 94
    :cond_6
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS:Ljava/util/HashMap;

    if-nez v0, :cond_7

    .line 95
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapRUS()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS:Ljava/util/HashMap;

    .line 97
    :cond_7
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_BUL:Ljava/util/HashMap;

    if-nez v0, :cond_8

    .line 98
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapBUL()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_BUL:Ljava/util/HashMap;

    .line 100
    :cond_8
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS_HW:Ljava/util/HashMap;

    if-nez v0, :cond_9

    .line 101
    sget-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    invoke-interface {v0}, Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;->creatMapRUS_HW()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS_HW:Ljava/util/HashMap;

    .line 102
    :cond_9
    return-void
.end method

.method protected abstract createKeyMapFactory()Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;
.end method

.method protected getKeyType_QW(IZ)I
    .locals 5
    .parameter "unicode"
    .parameter "landScape"

    .prologue
    const/16 v1, 0x64

    .line 168
    const-string v2, "LatinIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getKeyType_QW]: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v2, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 172
    .local v0, kdbId:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 173
    const/16 v1, 0x65

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 53
    return-void
.end method

.method protected isCandidateNice_SC(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "candidate"
    .parameter "exactWord"

    .prologue
    .line 189
    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/LatinIM;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v11}, Lcom/htc/android/htcime/HTCIMMData;->isQwertySpellingCorrectOn()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 190
    const/4 v11, 0x1

    .line 286
    :goto_0
    return v11

    .line 192
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, exactWordSB:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    .local v9, swapCharsSB:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v8, omitCharsSB:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v1, addCharsSB:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 214
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 215
    .local v2, ch:C
    const/4 v5, 0x1

    .line 216
    .local v5, isOmit:Z
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 218
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v2, v11, :cond_3

    .line 220
    const/4 v5, 0x0

    .line 221
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    if-eqz v5, :cond_2

    .line 226
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 228
    .end local v2           #ch:C
    .end local v5           #isOmit:Z
    .end local v6           #j:I
    :cond_4
    move-object v1, v3

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, addChars:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, omitChars:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #exactWordSB:Ljava/lang/StringBuilder;
    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v3       #exactWordSB:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 243
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 244
    .restart local v2       #ch:C
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v6, v11, :cond_5

    .line 246
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v2, v11, :cond_9

    .line 248
    const/4 v11, 0x1

    if-le v6, v11, :cond_7

    .line 249
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    .local v10, tmp:I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 250
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 241
    .end local v10           #tmp:I
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 255
    .restart local v10       #tmp:I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 259
    .end local v10           #tmp:I
    :cond_7
    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    .line 260
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 244
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 281
    .end local v2           #ch:C
    .end local v6           #j:I
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b

    .line 282
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 283
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    if-le v11, v12, :cond_c

    .line 284
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 286
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method protected loadConstant(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, sp:Landroid/content/SharedPreferences;
    const v2, 0x7f0a0067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/android/htcime/XT9IME/LatinIM;->sFeature_QWERTYStyle:I

    .line 64
    sget-object v2, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/LatinIM;->createKeyMapFactory()Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/XT9IME/LatinIM;->sKeyMapFactory:Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/LatinIM;->build_QW_KDBMAP(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method protected mapQWERTYKdbIndex(IZ)I
    .locals 4
    .parameter "keyId"
    .parameter "landScape"

    .prologue
    .line 157
    const-string v1, "LatinIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mapQWERTYKdbIndex]: keyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 161
    .local v0, kdbId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 162
    const/16 v1, 0x65

    .line 164
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected onKDBChange(I)V
    .locals 4
    .parameter "kdbID"

    .prologue
    .line 106
    and-int/lit16 v0, p1, 0xff

    .line 108
    .local v0, LowkdbID:I
    const-string v1, "LatinIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKDBChange() kdbID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sparse-switch v0, :sswitch_data_0

    .line 152
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_ENG:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    .line 154
    :goto_0
    return-void

    .line 112
    :sswitch_0
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GER:Ljava/util/HashMap;

    :goto_1
    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_ENG:Ljava/util/HashMap;

    goto :goto_1

    .line 116
    :sswitch_1
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GER:Ljava/util/HashMap;

    :goto_2
    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_FRA:Ljava/util/HashMap;

    goto :goto_2

    .line 120
    :sswitch_2
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GER:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 124
    :sswitch_3
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_DAN:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 129
    :sswitch_4
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_SWE:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 133
    :sswitch_5
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_NOR:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 137
    :sswitch_6
    const v1, 0xff00

    and-int/2addr v1, p1

    const/16 v2, 0x1c00

    if-ne v1, v2, :cond_2

    .line 138
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS_HW:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_RUS:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 144
    :sswitch_7
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_BUL:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 148
    :sswitch_8
    sget-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP_GRC:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/android/htcime/XT9IME/LatinIM;->sQW_KDBMAP:Ljava/util/HashMap;

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_8
        0x9 -> :sswitch_0
        0xb -> :sswitch_4
        0xc -> :sswitch_1
        0x14 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1d -> :sswitch_4
    .end sparse-switch
.end method

.class public Lcom/htc/android/htcime/ezsip/PortQwertySIPView;
.super Lcom/htc/android/htcime/ezsip/EZSIPView;
.source "PortQwertySIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PortQwertySIPView"

.field private static final XT9:Ljava/lang/String; = "XT9"


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private bw:Ljava/io/BufferedWriter;

.field private dismissKey:Z

.field private fr:Ljava/io/FileReader;

.field private fw:Ljava/io/FileWriter;

.field private handlingMsg:Z

.field private keyInited:Z

.field private logFilePath:Ljava/lang/String;

.field private mGoogle8000Handler:Landroid/os/Handler;

.field private mGreekKB:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseTime:I

.field private mXT9Width:F

.field private mXT9_Drawable:Landroid/graphics/drawable/Drawable;

.field notifyT:Ljava/lang/Thread;

.field private spaceBntIdx:I

.field private wordChars:[C

.field private wordFilePath:Ljava/lang/String;

.field private wordPosX:[I

.field private wordPosY:[I

.field private xt9_pos_x:I

.field private xt9_pos_y:I

.field private xt9_rus_pos_x:I

.field private xt9_rus_pos_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 71
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    .line 1088
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->dismissKey:Z

    .line 1136
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I

    .line 1137
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I

    .line 1138
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    .line 1140
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceBntIdx:I

    .line 1143
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z

    .line 1145
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->logFilePath:Ljava/lang/String;

    .line 1146
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordFilePath:Ljava/lang/String;

    .line 1148
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    .line 1149
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    .line 1150
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    .line 1151
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    .line 1153
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z

    .line 1154
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPauseTime:I

    .line 1155
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->notifyT:Ljava/lang/Thread;

    .line 1177
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGoogle8000Handler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Full Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x7000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4110

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "XT9"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9Width:F

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->logFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->openFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->getNextWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->typeWord(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->closeFile()V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I

    return-object p1
.end method

.method static synthetic access$702(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[C)[C
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z

    return p1
.end method

.method private adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 5
    .parameter "mKey"

    .prologue
    const/16 v3, -0x10

    const/4 v4, 0x1

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v1, 0x0

    .line 1093
    .local v1, space_type_inc:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mbDisable_gl:Z

    .line 1094
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1095
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_1

    .line 1096
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x17

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1116
    :goto_0
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1127
    :cond_0
    return-void

    .line 1098
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->dismissKey:Z

    if-eqz v2, :cond_2

    .line 1099
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x63

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1100
    const/4 v1, 0x3

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1105
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mbDisable_gl:Z

    goto :goto_0

    .line 1109
    :cond_3
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_4

    .line 1110
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x18

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0

    .line 1112
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0
.end method

.method private closeFile()V
    .locals 2

    .prologue
    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1324
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 1325
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1326
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 1327
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    .line 1328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    .line 1329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    .line 1330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findBntIdx(C)I
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 1273
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1282
    :cond_0
    :goto_0
    return v2

    .line 1276
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1277
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    aget-char v4, v4, v2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1278
    .local v0, c2:C
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1279
    .local v1, c3:C
    if-eq v0, v1, :cond_0

    .line 1276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c2:C
    .end local v1           #c3:C
    :cond_2
    move v2, v3

    .line 1282
    goto :goto_0
.end method

.method private getNextWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1289
    :goto_0
    return-object v0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initWordPos()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1251
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z

    if-eqz v2, :cond_1

    .line 1270
    :cond_0
    return-void

    .line 1253
    :cond_1
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z

    .line 1254
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I

    .line 1255
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I

    .line 1256
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    .line 1258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v2, v0

    .line 1260
    .local v1, k:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I

    iget-object v3, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aput v3, v2, v0

    .line 1261
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I

    iget-object v3, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    aput v3, v2, v0

    .line 1262
    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    if-ne v2, v6, :cond_2

    .line 1263
    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceBntIdx:I

    .line 1265
    :cond_2
    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v5, :cond_3

    .line 1266
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    iget-object v3, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 1258
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C

    aput-char v6, v2, v0

    goto :goto_1
.end method

.method private onInterceptKeyUp()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 722
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 723
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 726
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 727
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 728
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 732
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private openFile()V
    .locals 4

    .prologue
    .line 1305
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v0, logFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v1, wordFile:Ljava/io/File;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 1309
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    .line 1310
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1311
    :cond_1
    new-instance v2, Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fw:Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    .line 1313
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 1314
    :cond_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    .line 1315
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1316
    :cond_3
    new-instance v2, Ljava/io/BufferedReader;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->fr:Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->br:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    .end local v0           #logFile:Ljava/io/File;
    .end local v1           #wordFile:Ljava/io/File;
    :goto_0
    return-void

    .line 1317
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private postPrediction(I)V
    .locals 5
    .parameter "keycode"

    .prologue
    .line 452
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_PostPrediction:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 454
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->cancel()V

    .line 455
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    mul-int/lit8 v1, v1, 0x19

    rsub-int/lit8 v0, v1, 0x64

    .line 457
    .local v0, predic_delay:I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 458
    const/16 v0, 0x64

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    const/4 v3, 0x5

    const/high16 v4, 0x1300

    invoke-virtual {v2, v3, v4, p1}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 463
    .end local v0           #predic_delay:I
    :cond_1
    return-void
.end method

.method private quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z
    .locals 13
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "threshold"

    .prologue
    .line 535
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-eqz v5, :cond_0

    .line 536
    const/4 v5, 0x0

    .line 619
    :goto_0
    return v5

    .line 545
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-lez v5, :cond_8

    .line 546
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v6, 0xff

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v7, v7, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    sub-long/2addr v5, v7

    move/from16 v0, p4

    int-to-long v7, v0

    cmp-long v5, v5, v7

    if-gez v5, :cond_8

    .line 548
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 549
    iget-object v5, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 615
    const/4 v5, 0x0

    goto :goto_0

    .line 564
    :sswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 565
    .local v2, m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x6c

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 566
    .local v1, l:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 567
    move/from16 v0, p3

    invoke-virtual {v2, p2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v5

    move/from16 v0, p3

    invoke-virtual {v1, p2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v6

    if-le v5, v6, :cond_2

    const/4 v3, 0x1

    .line 569
    .local v3, sendL:Z
    :goto_1
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v5, :cond_1

    .line 570
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    .line 572
    if-eqz v3, :cond_3

    .line 573
    const-string v5, "BackSpace->l"

    invoke-static {v5}, Lcom/htc/android/htcime/util/ScoringUtil;->appendDHANotifyStr(Ljava/lang/String;)V

    .line 579
    :cond_1
    :goto_2
    const/high16 v6, 0x300

    if-eqz v3, :cond_4

    const/16 v5, 0x6c

    :goto_3
    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 580
    const/4 v5, 0x1

    goto :goto_0

    .line 567
    .end local v3           #sendL:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 575
    .restart local v3       #sendL:Z
    :cond_3
    const-string v5, "BackSpace->m"

    invoke-static {v5}, Lcom/htc/android/htcime/util/ScoringUtil;->appendDHANotifyStr(Ljava/lang/String;)V

    goto :goto_2

    .line 579
    :cond_4
    const/16 v5, 0x6d

    goto :goto_3

    .line 583
    .end local v3           #sendL:Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 605
    .end local v1           #l:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v2           #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 606
    .restart local v2       #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    .line 608
    .local v4, sym_sip:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    move/from16 v0, p3

    int-to-double v5, v0

    iget v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0

    iget v11, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    .line 609
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 611
    :cond_7
    const v5, 0x300006d

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 612
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 619
    .end local v2           #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v4           #sym_sip:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 549
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private setKeyboardbyLang(I)V
    .locals 7
    .parameter "lang"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mEnlargeLowercase:Z

    .line 121
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    .line 123
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 126
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 127
    .local v2, targetXmlId:I
    packed-switch p1, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_0
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    if-eq v3, v6, :cond_0

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_htcime_noarrow"

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v3, v5, :cond_1

    const-string v5, "_noarrow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_6

    .line 193
    :cond_2
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 198
    :goto_1
    return-void

    .line 130
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 135
    :pswitch_2
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_2
    goto :goto_0

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_fr"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 140
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_3
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_3
    goto/16 :goto_0

    .line 140
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 144
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_rus"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 151
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_sms_gre"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_4
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    .line 154
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_gre"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 158
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_bul"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 167
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_ee"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 171
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_dan"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 176
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_sve"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 180
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "qwerty_nor"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 196
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->updateKeys()V

    goto/16 :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private typeSpace()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceBntIdx:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->onKeyDown(III)V

    .line 1244
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceBntIdx:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->onKeyUp(III)V

    .line 1246
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPauseTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private typeWord(Ljava/lang/String;)Z
    .locals 8
    .parameter "str"

    .prologue
    const/4 v6, 0x1

    .line 1214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    .line 1215
    .local v5, strlen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v5, :cond_2

    .line 1217
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1218
    .local v1, c:C
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->findBntIdx(C)I

    move-result v0

    .line 1219
    .local v0, bntIdx:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 1220
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->writeToLog()Z

    .line 1221
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->typeSpace()V

    .line 1239
    .end local v0           #bntIdx:I
    .end local v1           #c:C
    :goto_1
    return v6

    .line 1225
    .restart local v0       #bntIdx:I
    .restart local v1       #c:C
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I

    aget v3, v7, v0

    .line 1226
    .local v3, posX:I
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I

    aget v4, v7, v0

    .line 1229
    .local v4, posY:I
    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->onKeyDown(III)V

    .line 1230
    if-ne v2, v5, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->writeToLog()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1233
    const/4 v6, 0x0

    goto :goto_1

    .line 1236
    :cond_1
    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->onKeyUp(III)V

    .line 1215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    .end local v0           #bntIdx:I
    .end local v1           #c:C
    .end local v3           #posX:I
    .end local v4           #posY:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->typeSpace()V

    goto :goto_1
.end method

.method private writeToLog()Z
    .locals 3

    .prologue
    .line 1294
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v2, Lcom/htc/android/htcime/XT9IME/XT9IME;

    check-cast v2, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getWCL()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, wcl:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1296
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    .end local v1           #wcl:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public InitialT9Setting()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1033
    const/4 v0, 0x0

    .line 1036
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_0

    .line 1037
    const/4 v1, 0x0

    .line 1040
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 1043
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1044
    :goto_1
    shl-int/lit8 v1, v1, 0x3

    .line 1045
    or-int/2addr v0, v1

    .line 1048
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_3

    .line 1049
    const/4 v1, 0x1

    .line 1052
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 1053
    or-int/2addr v0, v1

    .line 1056
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 1057
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1058
    return-void

    .line 1039
    .end local v1           #tmp:I
    :cond_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .restart local v1       #tmp:I
    :goto_3
    goto :goto_0

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    goto :goto_3

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 1043
    goto :goto_1

    .line 1051
    :cond_3
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYWordComplete:Z

    if-ne v4, v2, :cond_4

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_4
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "label"

    .prologue
    const/4 v2, 0x0

    .line 1062
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c2

    if-ne v0, v1, :cond_1

    .line 1065
    const-string p1, "\u0385"

    .line 1071
    :cond_0
    :goto_0
    return-object p1

    .line 1066
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1069
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->draw(Landroid/graphics/Canvas;)V

    .line 399
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    .line 401
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_rus_pos_x:I

    .line 402
    .local v0, x:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_rus_pos_y:I

    .line 407
    .local v1, y:I
    :goto_0
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    return-void

    .line 404
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_pos_x:I

    .line 405
    .restart local v0       #x:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_pos_y:I

    .restart local v1       #y:I
    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 360
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 364
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->closing()V

    .line 369
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->finishInput()V

    .line 370
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method protected handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z
    .locals 7
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v2, 0x80

    const/4 v4, 0x1

    const/high16 v6, 0x2300

    const/4 v3, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->getAccentMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    .local v0, accentString:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getWordIndex()I

    move-result v5

    sput v5, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAccentWordIndex:I

    .line 470
    iget-object v5, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 516
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_9

    :goto_0
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    .line 520
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v4, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 522
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->shiftStateCheck()V

    .line 525
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setAccentMode(Z)V

    move v3, v4

    .line 529
    .end local v0           #accentString:Ljava/lang/CharSequence;
    :cond_2
    return v3

    .line 473
    .restart local v0       #accentString:Ljava/lang/CharSequence;
    :sswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 474
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    const/high16 v2, 0x711

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_1

    .line 473
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 482
    .end local v1           #i:I
    :sswitch_1
    sget v2, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAccentWordIndex:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    .line 483
    const/high16 v2, 0x71c

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 484
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_1

    .line 487
    :cond_4
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 494
    :sswitch_2
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 500
    :sswitch_3
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v5, :cond_5

    .line 501
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 503
    :cond_5
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_6

    :goto_3
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 507
    :sswitch_4
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-eq v4, v5, :cond_7

    .line 509
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 511
    :cond_7
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_8

    :goto_4
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v3

    .line 516
    goto/16 :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2e -> :sswitch_2
        0x3b -> :sswitch_3
        0x40 -> :sswitch_2
        0x3c2 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 5
    .parameter "htcIMM"

    .prologue
    const/4 v4, 0x0

    .line 94
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 95
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 96
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setKeyboardbyLang(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v2, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 100
    const/4 v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setPopupOffset(II)V

    .line 101
    const/high16 v1, 0x300

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    .line 102
    const/high16 v1, 0x600

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_LP_ID:I

    .line 105
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_pos_x:I

    .line 109
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_pos_y:I

    .line 110
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_rus_pos_x:I

    .line 111
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->xt9_rus_pos_y:I

    .line 112
    return-void
.end method

.method protected isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1132
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public notify(IILjava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 1076
    sparse-switch p1, :sswitch_data_0

    .line 1085
    :goto_0
    return-void

    .line 1078
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftbyAutoCap:Z

    .line 1079
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setCapModeFromIM(I)V

    goto :goto_0

    .line 1082
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->startGoogle8000(ILjava/lang/String;)V

    goto :goto_0

    .line 1076
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->doAutoCapCheck(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->shiftStateCheck()V

    goto :goto_0
.end method

.method protected onKeyDown(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 627
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->resetState()V

    .line 628
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 634
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/16 v2, 0x15e

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 636
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v5, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    .line 637
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 643
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-eq v6, v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x3c2

    if-eq v1, v2, :cond_0

    .line 651
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ne v6, v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-eq v9, v1, :cond_5

    .line 653
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 654
    .local v0, DAMKeyIndex:I
    if-eq v0, v8, :cond_5

    if-eq v0, p1, :cond_5

    .line 655
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 656
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 662
    .end local v0           #DAMKeyIndex:I
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 663
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    if-ne v1, v6, :cond_6

    .line 664
    iput v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    .line 665
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftStateSaved:I

    .line 666
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 667
    invoke-virtual {p0, v6, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 674
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x39

    if-gt v1, v2, :cond_a

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x30

    if-lt v1, v2, :cond_a

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    if-ne v1, v7, :cond_a

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_TopLabelHoldOnSHIFT:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 679
    const/high16 v1, 0x2300

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 692
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v5, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 693
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mDownTime:J

    iput-wide v2, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 694
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v6, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    .line 714
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    goto/16 :goto_0

    .line 669
    :cond_9
    invoke-virtual {p0, v7, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_1

    .line 681
    :cond_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_7

    .line 682
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 683
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 684
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 686
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    .line 688
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->postPrediction(I)V

    goto :goto_2

    .line 697
    :cond_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-ne v1, v9, :cond_c

    .line 699
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAddWordFlag:Z

    if-nez v1, :cond_8

    .line 702
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isSlideFunctionEnable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 703
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_3

    .line 705
    :cond_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    .line 706
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_3

    .line 707
    :cond_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-ne v1, v8, :cond_8

    .line 708
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_MultiTouchShift_Enable:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_8

    .line 709
    iput v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    goto/16 :goto_3
.end method

.method protected onKeyMove(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 981
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 986
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->feedbackEffect(I)V

    .line 988
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 992
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 993
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 994
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 995
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 996
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    .line 997
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->postPrediction(I)V

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 1008
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    .line 1009
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mFirstMove:Z

    goto :goto_0

    .line 1000
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1002
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAddWordFlag:Z

    if-nez v0, :cond_4

    .line 1005
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_1
.end method

.method protected onKeyUp(III)V
    .locals 7
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/high16 v3, 0x71c

    const/4 v4, 0x0

    .line 740
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->onInterceptKeyUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 750
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_2

    .line 762
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x3c2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-eq v5, v1, :cond_2

    .line 764
    const v1, 0xf000385

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    if-eq v1, p1, :cond_3

    .line 773
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    const/high16 v1, 0x3300

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(III)V

    .line 778
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v5, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 780
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->shiftStateCheck()V

    goto/16 :goto_0

    .line 784
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_0

    .line 959
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 961
    const v1, 0xf00003b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 789
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_5

    .line 791
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 792
    invoke-virtual {p0, v5, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 795
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 796
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 800
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 801
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 814
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_0

    .line 815
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    if-ne v1, v5, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPointerCount:I

    if-eq v1, v2, :cond_0

    .line 818
    :cond_6
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_7

    .line 819
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftbyAutoCap:Z

    .line 820
    invoke-virtual {p0, v6, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 823
    :goto_1
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    goto/16 :goto_0

    .line 822
    :cond_7
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setShiftCycle(I)I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_1

    .line 829
    :sswitch_3
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-ne v1, v6, :cond_8

    .line 830
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftbyAutoCap:Z

    .line 831
    invoke-virtual {p0, v5, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 833
    :cond_8
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftbyAutoCap:Z

    .line 834
    invoke-virtual {p0, v6, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 840
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    .line 841
    const/high16 v1, 0x71b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 844
    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 845
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 843
    :cond_9
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_2

    .line 849
    :sswitch_5
    const v1, 0x7110001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 867
    :sswitch_6
    const/high16 v1, 0xf00

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 871
    :sswitch_7
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 875
    :sswitch_8
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 876
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_a

    .line 877
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 892
    :cond_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, -0xf

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 893
    .local v0, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_b

    .line 894
    sget-boolean v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 895
    :cond_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_c

    .line 896
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->updateWCLWin_ID(III)V

    .line 897
    :cond_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v2, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    sput v2, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    .line 898
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->startInput()V

    goto/16 :goto_0

    .line 902
    .end local v0           #langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_9
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 903
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_d

    .line 904
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 908
    :cond_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 913
    :sswitch_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 916
    :sswitch_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 919
    :sswitch_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 922
    :sswitch_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 925
    :sswitch_e
    const v1, 0xf000009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 928
    :sswitch_f
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 933
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 936
    :sswitch_10
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 937
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_e

    .line 938
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 943
    :cond_e
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 947
    :sswitch_11
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 949
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 953
    :sswitch_12
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isSlideFunctionEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 786
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_e
        -0x19 -> :sswitch_9
        -0x18 -> :sswitch_10
        -0x17 -> :sswitch_11
        -0x16 -> :sswitch_3
        -0x15 -> :sswitch_b
        -0x14 -> :sswitch_a
        -0x13 -> :sswitch_d
        -0x12 -> :sswitch_c
        -0x10 -> :sswitch_f
        -0xf -> :sswitch_8
        -0x7 -> :sswitch_5
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_2
        0xa -> :sswitch_7
        0x20 -> :sswitch_12
        0x21 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2c -> :sswitch_6
        0x2d -> :sswitch_6
        0x2e -> :sswitch_6
        0x2f -> :sswitch_6
        0x3d -> :sswitch_6
        0x3f -> :sswitch_6
        0x40 -> :sswitch_6
        0x5b -> :sswitch_6
        0x5c -> :sswitch_6
        0x5d -> :sswitch_6
        0x5f -> :sswitch_6
    .end sparse-switch
.end method

.method protected onKeyUp_RepeatMode(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyUpEvent(I)V

    .line 973
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method protected setIMEInputMode()V
    .locals 1

    .prologue
    .line 1014
    const v0, 0x7150001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 1016
    const/high16 v0, 0x703

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->getPredictionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const v0, 0x70a0001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 1023
    :goto_0
    return-void

    .line 1022
    :cond_0
    const v0, 0x70a0002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 419
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-eqz v2, :cond_0

    .line 423
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->MT_SHIFT_STATUS:I

    if-eq v2, v5, :cond_0

    .line 425
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 430
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    .line 431
    .local v1, targetShiftState:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-ne v2, v5, :cond_2

    .line 432
    const/4 v1, 0x1

    .line 436
    :cond_2
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 446
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mShiftState:I

    if-eq v2, v1, :cond_0

    .line 447
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 440
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->doAutoCapCheck(I)I

    move-result v1

    .line 441
    goto :goto_1

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startGoogle8000(ILjava/lang/String;)V
    .locals 4
    .parameter "pauseTime"
    .parameter "src"

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->initWordPos()V

    .line 1159
    iput p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mPauseTime:I

    .line 1160
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordFilePath:Ljava/lang/String;

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IME_Test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wcl_result.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->logFilePath:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGoogle8000Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->notifyT:Ljava/lang/Thread;

    .line 1175
    return-void
.end method

.method public startInput()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 202
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->startInput()V

    .line 205
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mCurrentKey:I

    .line 206
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 207
    .local v2, lang:I
    iput v8, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    .line 208
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAutoCapMode:I

    .line 211
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setKeyboardbyLang(I)V

    .line 212
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setPreviewEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->previewDismiss()V

    .line 215
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mAutoCapMode:I

    .line 217
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, -0xf

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    .line 218
    .local v3, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 219
    sget-boolean v6, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 220
    sget-boolean v6, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mLanguageSwitchMode:Z

    if-eqz v6, :cond_3

    .line 223
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v7, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 225
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, predictionMode:Z
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->AddWordDisableButtons(Z)V

    .line 229
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->DisableLangSwitchButton(Z)V

    .line 230
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v6, :pswitch_data_0

    .line 282
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 283
    const/4 v4, 0x1

    .line 288
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 290
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->clearWCL()V

    .line 292
    const-string v6, "PortQwertySIPView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[startInput] lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v7, "PortQwertySIPView"

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 300
    const/high16 v6, 0x70f

    :try_start_0
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->GetSysLocale(I)I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 303
    const/high16 v6, 0x716

    const/4 v7, 0x1

    invoke-virtual {p0, v2, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->getQWKDBnamebyLang(II)I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->sendKeyEvent(I)V

    .line 306
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->InitialT9Setting()V

    .line 307
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->InitHTCFeature()V

    .line 309
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->doAutoCapCheck(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    .line 310
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setPredictionMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_2
    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v7, "PortQwertySIPView"

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 321
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 322
    const/4 v0, 0x1

    .line 323
    .local v0, damLayout:I
    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    sparse-switch v6, :sswitch_data_0

    .line 336
    :goto_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v6

    invoke-static {v5, v0}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v6, v5, v7}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 340
    .end local v0           #damLayout:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setStatusIcon()V

    .line 343
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 346
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v7, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 349
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->invalidateAll()V

    .line 350
    return-void

    .end local v4           #predictionMode:Z
    :cond_3
    move v2, v5

    .line 220
    goto/16 :goto_0

    .line 240
    .restart local v4       #predictionMode:Z
    :pswitch_1
    const/4 v4, 0x1

    .line 241
    goto/16 :goto_1

    .line 244
    :pswitch_2
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 248
    :pswitch_3
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 251
    :pswitch_4
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 254
    :pswitch_5
    iput v10, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 257
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->DisableLangSwitchButton(Z)V

    goto/16 :goto_1

    .line 260
    :pswitch_7
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->AddWordDisableButtons(Z)V

    goto/16 :goto_1

    .line 263
    :pswitch_8
    const/4 v4, 0x1

    .line 265
    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mGreekKB:Z

    if-eqz v6, :cond_5

    .line 267
    invoke-static {v8}, Lcom/htc/android/htcime/util/CharTransfer;->setTransferable(Z)V

    .line 268
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v6, :cond_4

    .line 269
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 270
    :cond_4
    invoke-virtual {p0, v10, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 273
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v6, :cond_6

    .line 274
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v6, v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 275
    :cond_6
    invoke-virtual {p0, v8, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PortQwertySIPView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[startInput] Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 326
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #damLayout:I
    :sswitch_0
    const/4 v0, 0x6

    .line 327
    goto/16 :goto_3

    .line 333
    :sswitch_1
    const/4 v0, 0x7

    goto/16 :goto_3

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

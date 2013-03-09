.class public Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;
.super Lcom/htc/android/htcime/XT9IME/XT9IME;
.source "XT9IMETutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;
    }
.end annotation


# static fields
.field protected static final CLTAG:Ljava/lang/String; = "XT9IMETutorial"

.field public static activeString:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method buildWCL_QW_FakePD(Landroid/view/inputmethod/InputConnection;)I
    .locals 8
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->CAND_COUNT:[[I

    sget v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    aget v1, v3, v4

    .line 132
    .local v1, ret:I
    if-lez v1, :cond_1

    .line 134
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, exactWord:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, selLstStr:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    aget-object v3, v3, v4

    const-string v4, "\\|"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->ACTIVE_WORD_IDX:[[I

    sget v5, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    aget v4, v4, v5

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 141
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, v7}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 142
    iput-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mWCLDisplay:Z

    .line 143
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq v3, v4, :cond_0

    .line 144
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 146
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 153
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v7, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 155
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 178
    .end local v0           #exactWord:Ljava/lang/String;
    .end local v2           #selLstStr:Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 180
    return v1

    .line 148
    .restart local v0       #exactWord:Ljava/lang/String;
    .restart local v2       #selLstStr:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 149
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    goto :goto_0

    .line 167
    .end local v0           #exactWord:Ljava/lang/String;
    .end local v2           #selLstStr:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 172
    :cond_2
    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    goto :goto_1
.end method

.method public handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "InputConnection"
    .parameter "FnInfo"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 111
    const/high16 v2, 0xff

    and-int/2addr v2, p2

    shr-int/lit8 v0, v2, 0x10

    .line 112
    .local v0, fn_id:I
    const v2, 0xffff

    and-int v1, p2, v2

    .line 114
    .local v1, fn_val:I
    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 117
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeSetBigramEnabled(Z)I

    .line 119
    const/4 v2, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"

    .prologue
    const/4 v1, 0x1

    .line 199
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sSkipXT9Tutorial:Z

    if-eqz v2, :cond_1

    .line 200
    invoke-super/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v1

    .line 346
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 204
    invoke-super/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v1

    .line 205
    .local v1, ret_val:Z
    goto :goto_0

    .line 216
    .end local v1           #ret_val:Z
    :cond_2
    :try_start_0
    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mapQWERTYKdbIndex(IZ)I

    move-result v0

    .line 218
    .local v0, real_handle_key:I
    packed-switch v0, :pswitch_data_0

    .line 324
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 327
    invoke-static {p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 328
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeProcessKey(I)I

    .line 331
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->buildWCL_QW_FakePD(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->candidate_count:I

    goto :goto_0

    .line 339
    .end local v0           #real_handle_key:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 221
    .restart local v0       #real_handle_key:I
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 225
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-lez v2, :cond_3

    .line 227
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->CAND_COUNT:[[I

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->candidate_count:I

    .line 228
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "\\|"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    goto/16 :goto_0

    .line 342
    .end local v0           #real_handle_key:I
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 234
    .restart local v0       #real_handle_key:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    .line 235
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :cond_4
    const/16 v2, 0x43

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->doNormalKey(I)V

    goto/16 :goto_0

    .line 246
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 248
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_5

    .line 249
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    if-eq v2, v3, :cond_5

    .line 250
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 251
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "\\|"

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 256
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeClearAllSymb()V

    .line 260
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    .line 271
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mLastSpaceTime:J

    goto/16 :goto_0

    .line 264
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 265
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 266
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v3, ""

    const-string v4, ". "

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 269
    :cond_7
    const-string v2, ""

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 274
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 276
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_8

    .line 277
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    if-eq v2, v3, :cond_8

    .line 278
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 279
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "\\|"

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 283
    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeClearAllSymb()V

    .line 287
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    goto/16 :goto_0

    .line 291
    :cond_9
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 296
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 298
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_a

    .line 299
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    if-eq v2, v3, :cond_a

    .line 300
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 301
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial$FakePD;->STRING:[[Ljava/lang/String;

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "\\|"

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 305
    :cond_a
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->mPasteCandString:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeClearAllSymb()V

    .line 309
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->clearWCL()V

    goto/16 :goto_0

    .line 313
    :cond_b
    const-string v2, ""

    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 330
    :cond_c
    iget v2, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    iget v3, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    invoke-static {v0, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->nativeProcessTap(III)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

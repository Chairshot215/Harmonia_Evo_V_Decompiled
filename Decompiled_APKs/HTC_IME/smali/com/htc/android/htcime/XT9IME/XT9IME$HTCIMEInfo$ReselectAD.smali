.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReselectAD"
.end annotation


# instance fields
.field private mActive:Z

.field private mAppendedSym:Ljava/lang/String;

.field private mAutoAddWord:Z

.field private mExactedWord:Ljava/lang/String;

.field private mJustAccepted:Z

.field private mSuggestWord:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 6081
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AutoAddExactedWord()V
    .locals 6

    .prologue
    .line 6162
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    if-eqz v2, :cond_0

    .line 6163
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 6166
    .local v0, custom_word:Ljava/lang/String;
    const-string v2, "RAD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto add custom word ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") by RAD rule."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    .line 6171
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    move-result v1

    .line 6172
    .local v1, result:I
    if-nez v1, :cond_0

    .line 6173
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->showToast(Ljava/lang/String;)V

    .line 6174
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->check_remove_previous_PSC_words(Ljava/lang/String;)V

    .line 6177
    .end local v0           #custom_word:Ljava/lang/String;
    .end local v1           #result:I
    :cond_0
    return-void
.end method

.method checkPoint(Landroid/view/KeyEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0x68

    const/16 v8, 0x67

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x1

    .line 6194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 6195
    .local v2, keyCode:I
    const/high16 v3, -0x100

    and-int v0, v2, v3

    .line 6196
    .local v0, HiKeyCode:I
    const v3, 0xffffff

    and-int v1, v2, v3

    .line 6200
    .local v1, LoKeyCode:I
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6202
    and-int v3, v2, v5

    const/high16 v4, 0x701

    if-eq v3, v4, :cond_2

    and-int v3, v2, v5

    const/high16 v4, 0x731

    if-eq v3, v4, :cond_2

    const/high16 v3, 0x300

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3, v1, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v3

    if-eq v3, v8, :cond_2

    :cond_0
    const/high16 v3, 0x800

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3, v1, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 6206
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->clearActive()V

    .line 6216
    :cond_2
    :goto_0
    return-void

    .line 6208
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->isAutoAdd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6210
    and-int v3, v2, v5

    const/high16 v4, 0x701

    if-eq v3, v4, :cond_2

    and-int v3, v2, v5

    const/high16 v4, 0x731

    if-eq v3, v4, :cond_2

    const/high16 v3, 0x300

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3, v1, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v3

    if-eq v3, v9, :cond_2

    :cond_4
    const/high16 v3, 0x800

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3, v1, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v3

    if-eq v3, v9, :cond_2

    .line 6214
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->clearAutoAdd()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6106
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    .line 6107
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mExactedWord:Ljava/lang/String;

    .line 6108
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mSuggestWord:Ljava/lang/String;

    .line 6109
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAppendedSym:Ljava/lang/String;

    .line 6110
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    .line 6111
    return-void
.end method

.method public clearActive()V
    .locals 1

    .prologue
    .line 6147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    .line 6148
    return-void
.end method

.method public clearAutoAdd()V
    .locals 1

    .prologue
    .line 6157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    .line 6158
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 6142
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    return v0
.end method

.method public isAutoAdd()Z
    .locals 1

    .prologue
    .line 6152
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    return v0
.end method

.method public needReset_onUpdateSelection()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6181
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mJustAccepted:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6183
    .local v0, ret_val:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mJustAccepted:Z

    if-eqz v2, :cond_0

    .line 6185
    const-string v2, "RAD"

    const-string v3, "mJustAccepted changed from true => false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6186
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mJustAccepted:Z

    .line 6189
    :cond_0
    return v0

    .end local v0           #ret_val:Z
    :cond_1
    move v0, v1

    .line 6181
    goto :goto_0
.end method

.method public rollBack()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6115
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    if-eqz v2, :cond_0

    .line 6118
    const-string v2, "RAD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do reslection after delete key. exacted word = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mExactedWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], suggested word = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mSuggestWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], appended symbol = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAppendedSym:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 6122
    .local v0, ret:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mExactedWord:Ljava/lang/String;

    aput-object v2, v0, v5

    .line 6123
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mSuggestWord:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 6124
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAppendedSym:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 6125
    iput-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    .line 6126
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    .line 6127
    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mExactedWord:Ljava/lang/String;

    .line 6128
    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mSuggestWord:Ljava/lang/String;

    .line 6129
    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAppendedSym:Ljava/lang/String;

    .line 6136
    .end local v0           #ret:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 6135
    :cond_0
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAutoAddWord:Z

    move-object v0, v1

    .line 6136
    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "exactedWord"
    .parameter "suggestWord"
    .parameter "appendedSym"

    .prologue
    const/4 v0, 0x1

    .line 6097
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mExactedWord:Ljava/lang/String;

    .line 6098
    iput-object p2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mSuggestWord:Ljava/lang/String;

    .line 6099
    iput-object p3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mAppendedSym:Ljava/lang/String;

    .line 6100
    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mActive:Z

    .line 6101
    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->mJustAccepted:Z

    .line 6102
    return-void
.end method

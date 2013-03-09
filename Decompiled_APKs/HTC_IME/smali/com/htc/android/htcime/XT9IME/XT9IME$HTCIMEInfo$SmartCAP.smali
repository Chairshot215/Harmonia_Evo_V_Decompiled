.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartCAP"
.end annotation


# static fields
.field private static final DEBUG_AutoCorrectCase:Z


# instance fields
.field private T_MIN_WORD_LEN:I

.field private isApplied:Z

.field private mMaxDiagDataSize:I

.field private mTarget:Ljava/lang/StringBuilder;

.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 6519
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6522
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->T_MIN_WORD_LEN:I

    .line 6523
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mMaxDiagDataSize:I

    .line 6524
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mMaxDiagDataSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    .line 6525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    return-void
.end method

.method private isAlphabetLetter(C)Z
    .locals 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 6530
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6541
    :cond_0
    :goto_0
    return v1

    .line 6533
    :cond_1
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 6535
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_0

    .line 6537
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 12

    .prologue
    const/16 v8, 0x64

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 6546
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 6632
    :cond_0
    :goto_0
    return-void

    .line 6550
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6556
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mMaxDiagDataSize:I

    invoke-virtual {v6, v7, v10, v8}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v5

    .line 6557
    .local v5, tbc:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mMaxDiagDataSize:I

    invoke-virtual {v6, v7, v10, v8}, Lcom/htc/android/htcime/HTCIMEService;->getTextAfterCursor(III)Ljava/lang/CharSequence;

    move-result-object v4

    .line 6559
    .local v4, tac:Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    .line 6560
    :cond_2
    const-string v6, "XT9IME"

    const-string v7, "[SmartCAP.apply] Can\'t get text from client, skip SmartCAP for current key event."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6571
    :cond_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, index:I
    :goto_1
    if-ltz v2, :cond_4

    .line 6572
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 6575
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6578
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 6579
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 6582
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6585
    const-string v6, "XT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SmartCAP.begin] target = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6592
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->T_MIN_WORD_LEN:I

    if-lt v6, v7, :cond_0

    .line 6596
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 6597
    .local v3, noLetterInTarget:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 6599
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 6600
    .local v0, ch:C
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isAlphabetLetter(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6602
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 6606
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 6613
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isAllLowercase(Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6616
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iput v9, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 6617
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 6618
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const-string v7, ""

    invoke-interface {v6, v9, v9, v7}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 6619
    iput-boolean v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    goto/16 :goto_0

    .line 6571
    .end local v1           #i:I
    .end local v3           #noLetterInTarget:Ljava/lang/Boolean;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 6578
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 6597
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v3       #noLetterInTarget:Ljava/lang/Boolean;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6621
    .end local v0           #ch:C
    :cond_a
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->mTarget:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isAllUppercase(Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6624
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iput v11, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 6625
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 6626
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const-string v7, ""

    invoke-interface {v6, v9, v11, v7}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 6627
    iput-boolean v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    goto/16 :goto_0

    .line 6630
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->cancel()V

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6643
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    if-eqz v0, :cond_0

    .line 6644
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    .line 6645
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 6646
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 6647
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const-string v1, ""

    invoke-interface {v0, v3, v2, v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 6649
    :cond_0
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 6640
    return-void
.end method

.method isAllLowercase(Ljava/lang/StringBuilder;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 6666
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6668
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 6669
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6670
    const/4 v2, 0x0

    .line 6672
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 6666
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6672
    .end local v0           #ch:C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method isAllUppercase(Ljava/lang/StringBuilder;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 6656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6658
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 6659
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6660
    const/4 v2, 0x0

    .line 6662
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 6656
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6662
    .end local v0           #ch:C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onSIPCapLock()V
    .locals 1

    .prologue
    .line 6652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->isApplied:Z

    .line 6653
    return-void
.end method

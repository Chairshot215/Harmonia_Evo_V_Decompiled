.class public Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;
.super Ljava/lang/Object;
.source "XT9IME.java"

# interfaces
.implements Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Normal4PDSwitch"
.end annotation


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "Normal4PDSwitch"


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 5388
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastWord(Landroid/text/SpannableStringBuilder;)Ljava/lang/String;
    .locals 6
    .parameter "befCursorText"

    .prologue
    const/4 v1, 0x0

    .line 5425
    move-object v2, p1

    .line 5430
    .local v2, tbc:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_0

    .line 5431
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5435
    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 5453
    :cond_1
    :goto_1
    return-object v1

    .line 5430
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5439
    :cond_3
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5443
    move v3, v0

    .line 5446
    .local v3, wordEndPos:I
    :goto_2
    if-ltz v0, :cond_4

    .line 5447
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5449
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .line 5451
    .local v4, wordStartPos:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5453
    .local v1, lastWord:Ljava/lang/String;
    goto :goto_1

    .line 5446
    .end local v1           #lastWord:Ljava/lang/String;
    .end local v4           #wordStartPos:I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public judge(Landroid/text/SpannableStringBuilder;I)Z
    .locals 4
    .parameter "befCursorText"
    .parameter "keyType"

    .prologue
    .line 5401
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 5403
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 5405
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 5406
    .local v0, lastCh:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5407
    const/4 v2, 0x0

    .line 5421
    .end local v0           #lastCh:C
    :goto_0
    return v2

    .line 5409
    .restart local v0       #lastCh:C
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;->getLastWord(Landroid/text/SpannableStringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 5410
    .local v1, lastWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setPrecedingWord(Ljava/lang/String;)V

    .line 5421
    .end local v0           #lastCh:C
    .end local v1           #lastWord:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 5413
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 5417
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setPrecedingWord(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public noiseFilter(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter "befCursorText"

    .prologue
    .line 5396
    return-void
.end method

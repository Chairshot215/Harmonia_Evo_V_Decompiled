.class Lcom/android/calculator2/Logic;
.super Ljava/lang/Object;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Logic$TriggerCommonSecretCodeTask;,
        Lcom/android/calculator2/Logic$TriggerSecretCodeTask;
    }
.end annotation


# static fields
.field private static final COMMA_ENABLED:Z = false

.field private static final INFINITY:Ljava/lang/String; = "Infinity"

.field private static final INFINITY_UNICODE:Ljava/lang/String; = "\u221e"

.field static final MINUS:C = '\u2212'

.field private static final NAN:Ljava/lang/String; = "NaN"

.field private static final ROUND_DIGITS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private final mErrorString:Ljava/lang/String;

.field mHasToAddComma:Z

.field private mHistory:Lcom/android/calculator2/History;

.field private mIsError:Z

.field private final mLineLength:I

.field private mMemory:D

.field private mOperators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/String;

.field private mSymbols:Lorg/javia/arity/Symbols;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 6
    .parameter "context"
    .parameter "history"
    .parameter "display"

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 48
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 49
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/calculator2/Logic;->mMemory:D

    .line 64
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mHasToAddComma:Z

    .line 125
    new-instance v2, Lcom/android/calculator2/Logic$1;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Logic$1;-><init>(Lcom/android/calculator2/Logic;)V

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mTextWatcher:Landroid/text/TextWatcher;

    .line 68
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 71
    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    iget-object v3, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    const-string v4, "log(x)=log10(x)"

    invoke-virtual {v3, v4}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 81
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 82
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 88
    invoke-direct {p0, v5}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/calculator2/Logic;->initOperators(Landroid/content/Context;)V

    .line 90
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Lorg/javia/arity/SyntaxException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;Landroid/widget/Button;)V
    .locals 6
    .parameter "context"
    .parameter "history"
    .parameter "display"
    .parameter "equalButton"

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 48
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 49
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/calculator2/Logic;->mMemory:D

    .line 64
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mHasToAddComma:Z

    .line 125
    new-instance v2, Lcom/android/calculator2/Logic$1;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Logic$1;-><init>(Lcom/android/calculator2/Logic;)V

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mTextWatcher:Landroid/text/TextWatcher;

    .line 93
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 96
    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    iget-object v3, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    const-string v4, "log(x)=log10(x)"

    invoke-virtual {v3, v4}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 106
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 107
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 113
    invoke-direct {p0, v5}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/calculator2/Logic;->initOperators(Landroid/content/Context;)V

    .line 115
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lorg/javia/arity/SyntaxException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/calculator2/Logic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calculator2/Logic;)Lcom/android/calculator2/CalculatorDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    return-object v0
.end method

.method private clear(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const-string v2, ""

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->cleared()V

    .line 293
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private clearWithHistory(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 288
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueForMemoryOperation()D
    .locals 8

    .prologue
    .line 423
    const-wide/16 v3, 0x0

    .line 424
    .local v3, value:D
    iget-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v5, :cond_0

    .line 425
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 429
    const/16 v5, 0x2212

    const/16 v6, 0x2d

    :try_start_0
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 452
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v3

    .line 431
    .restart local v2       #text:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    :try_start_1
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {p0, v2}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    const/16 v5, 0x2212

    const/16 v6, 0x2d

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/javia/arity/SyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v3

    goto :goto_0

    .line 444
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 446
    :try_start_2
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    const/16 v6, 0x2212

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2       #text:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v3

    goto :goto_0

    .line 448
    .end local v2           #text:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 440
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    .restart local v2       #text:Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_0

    .line 439
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method private initOperators(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    .line 458
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mOperators:Ljava/util/ArrayList;

    const v2, 0x7f080022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method static isNumber(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 610
    const-string v0, "1234567890."

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 606
    const-string v0, "+\u2212\u00d7\u00f7/*-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static varargs log(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msgs"

    .prologue
    .line 621
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method private tryFormattingWithPrecision(DI)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 556
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NaN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 560
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 597
    :goto_0
    return-object v5

    .line 562
    :cond_0
    move-object v2, v4

    .line 563
    .local v2, mantissa:Ljava/lang/String;
    const/4 v1, 0x0

    .line 564
    .local v1, exponent:Ljava/lang/String;
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 565
    .local v0, e:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 566
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 569
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    :goto_1
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 579
    .local v3, period:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 580
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 582
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 584
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 585
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 575
    .end local v3           #period:I
    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 587
    .restart local v3       #period:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_5

    .line 588
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 592
    :cond_5
    if-eqz v1, :cond_6

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 597
    goto/16 :goto_0

    .line 595
    :cond_6
    move-object v4, v2

    goto :goto_3
.end method


# virtual methods
.method acceptInsert(Ljava/lang/String;)Z
    .locals 2
    .parameter "delta"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/calculator2/Logic;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "origin"

    .prologue
    .line 159
    move-object v5, p1

    .line 160
    .local v5, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 162
    .local v4, length:I
    const/4 v9, 0x3

    if-le v4, v9, :cond_4

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v3, v4, -0x1

    .line 166
    .local v3, index:I
    :goto_0
    if-ltz v3, :cond_1

    .line 167
    const/4 v8, -0x1

    .line 168
    .local v8, temp:I
    const/4 v0, 0x0

    .line 169
    .local v0, fragment:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/Logic;->isNumber(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 170
    invoke-virtual {p0, p1, v3}, Lcom/android/calculator2/Logic;->getNumberStartIndex(Ljava/lang/String;I)I

    move-result v8

    .line 171
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Logic;->addCommaToSingleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_1
    const-string v9, "Calculator"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fragment: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/android/calculator2/Logic;->log(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v3, v8, -0x1

    .line 180
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/calculator2/Logic;->getTextStartIndex(Ljava/lang/String;I)I

    move-result v8

    .line 175
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 181
    .end local v0           #fragment:Ljava/lang/String;
    .end local v8           #temp:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 183
    .local v7, size:I
    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_2

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 186
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    const-string v9, "Calculator"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "result: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Lcom/android/calculator2/Logic;->log(Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    .end local v1           #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #length:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #size:I
    :cond_3
    :goto_3
    return-object v5

    .line 189
    .restart local v4       #length:I
    :cond_4
    move-object v5, p1

    goto :goto_3
.end method

.method addCommaToSingleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "fragment"

    .prologue
    .line 196
    move-object v5, p1

    .line 197
    .local v5, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 198
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, dotIndex:I
    const/4 v8, -0x1

    if-le v1, v8, :cond_1

    .line 202
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, toProcess:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, toAppend:Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 209
    move-object v5, p1

    .line 225
    .end local v1           #dotIndex:I
    .end local v6           #toAppend:Ljava/lang/String;
    .end local v7           #toProcess:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 205
    .restart local v1       #dotIndex:I
    :cond_1
    move-object v7, p1

    .line 206
    .restart local v7       #toProcess:Ljava/lang/String;
    const-string v6, ""

    .restart local v6       #toAppend:Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_2
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 213
    .local v3, number:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_3

    .line 214
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%1$,1d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, commaAdded:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 216
    goto :goto_1

    .line 217
    .end local v0           #commaAdded:Ljava/lang/String;
    :cond_3
    move-object v5, p1

    goto :goto_1

    .line 219
    .end local v3           #number:J
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Calculator"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Parse error"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/calculator2/Logic;->log(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    move-object v5, p1

    goto :goto_1
.end method

.method cleared()V
    .locals 1

    .prologue
    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 299
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method eatHorizontalMove(Z)Z
    .locals 5
    .parameter "toLeft"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    iget-object v4, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 258
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 259
    .local v0, cursorPos:I
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    const-string v5, ""

    .line 545
    :goto_0
    return-object v5

    .line 512
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 513
    .local v2, size:I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 514
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 515
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 536
    :cond_1
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v5, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v3

    .line 538
    .local v3, value:D
    const-string v1, ""

    .line 539
    .local v1, result:Ljava/lang/String;
    iget v0, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .local v0, precision:I
    :goto_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_2

    .line 540
    invoke-direct {p0, v3, v4, v0}, Lcom/android/calculator2/Logic;->tryFormattingWithPrecision(DI)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    if-gt v5, v6, :cond_3

    .line 545
    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Infinity"

    const-string v7, "\u221e"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 539
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method getNumberStartIndex(Ljava/lang/String;I)I
    .locals 3
    .parameter "s"
    .parameter "begin"

    .prologue
    .line 243
    const/4 v1, -0x1

    .line 244
    .local v1, result:I
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/Logic;->isNumber(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    add-int/lit8 v1, v0, 0x1

    .line 250
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 251
    const/4 v1, 0x0

    .line 253
    :cond_1
    return v1

    .line 244
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method getTextStartIndex(Ljava/lang/String;I)I
    .locals 3
    .parameter "s"
    .parameter "begin"

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 230
    .local v1, result:I
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/Logic;->isNumber(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    add-int/lit8 v1, v0, 0x1

    .line 236
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 237
    const/4 v1, 0x0

    .line 239
    :cond_1
    return v1

    .line 230
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method insert(Ljava/lang/String;)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mHasToAddComma:Z

    .line 264
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->insert(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method onClear()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->moveToLast()V

    .line 325
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 326
    return-void
.end method

.method onDelete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorDisplay;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_0
.end method

.method onDown()V
    .locals 4

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v2, v0, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 381
    .end local v0           #newText:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method onEnter()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 329
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calculator2/hide/SecretCodeHandler;->isCommonSecretCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    new-instance v2, Lcom/android/calculator2/Logic$TriggerCommonSecretCodeTask;

    invoke-direct {v2, p0, v4}, Lcom/android/calculator2/Logic$TriggerCommonSecretCodeTask;-><init>(Lcom/android/calculator2/Logic;Lcom/android/calculator2/Logic$1;)V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/calculator2/Logic$TriggerCommonSecretCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-static {}, Lcom/android/calculator2/hide/HideUtils;->isSecretCodeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/calculator2/hide/SecretCodeHandler;->isSecretCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    new-instance v2, Lcom/android/calculator2/Logic$TriggerSecretCodeTask;

    invoke-direct {v2, p0, v4}, Lcom/android/calculator2/Logic$TriggerSecretCodeTask;-><init>(Lcom/android/calculator2/Logic;Lcom/android/calculator2/Logic$1;)V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/calculator2/Logic$TriggerSecretCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 346
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_1

    .line 353
    .end local v0           #e:Lorg/javia/arity/SyntaxException;
    :cond_3
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method onMemoryClear()V
    .locals 2

    .prologue
    .line 419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calculator2/Logic;->mMemory:D

    .line 420
    return-void
.end method

.method onMemoryMinus()Z
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getValueForMemoryOperation()D

    move-result-wide v1

    .line 396
    .local v1, value:D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    .line 397
    iget-wide v3, p0, Lcom/android/calculator2/Logic;->mMemory:D

    sub-double/2addr v3, v1

    iput-wide v3, p0, Lcom/android/calculator2/Logic;->mMemory:D

    .line 398
    const/4 v0, 0x1

    .line 400
    :cond_0
    return v0
.end method

.method onMemoryPlus()Z
    .locals 5

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getValueForMemoryOperation()D

    move-result-wide v1

    .line 386
    .local v1, value:D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    .line 387
    iget-wide v3, p0, Lcom/android/calculator2/Logic;->mMemory:D

    add-double/2addr v3, v1

    iput-wide v3, p0, Lcom/android/calculator2/Logic;->mMemory:D

    .line 388
    const/4 v0, 0x1

    .line 390
    :cond_0
    return v0
.end method

.method onMemoryResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 404
    iget-wide v1, p0, Lcom/android/calculator2/Logic;->mMemory:D

    iget v3, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-static {v1, v2, v3, v4}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, result:Ljava/lang/String;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iput-boolean v4, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 415
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 408
    :cond_0
    const/16 v1, 0x2d

    const/16 v2, 0x2212

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Infinity"

    const-string v3, "\u221e"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_1
    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_1
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 367
    :cond_1
    return-void
.end method

.method setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 273
    return-void
.end method

.method updateHistory()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 479
    return-void
.end method

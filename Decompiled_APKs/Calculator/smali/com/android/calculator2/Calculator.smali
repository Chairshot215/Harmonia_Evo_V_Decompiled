.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Calculator$InitTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Calculator"


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field private mInitTask:Lcom/android/calculator2/Calculator$InitTask;

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mPersist:Lcom/android/calculator2/Persist;

.field private mPreferenceManager:Lcom/android/calculator2/PreferenceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/History;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/History;)Lcom/android/calculator2/History;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Persist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Persist;)Lcom/android/calculator2/Persist;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Logic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Logic;)Lcom/android/calculator2/Logic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calculator2/Calculator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->findViews()V

    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 76
    const v1, 0x7f0a000b

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, imageButton:Landroid/view/View;
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/calculator2/Calculator$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$1;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    const v1, 0x7f0a0012

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 94
    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 45
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 46
    new-instance v0, Lcom/android/calculator2/PreferenceManager;

    invoke-direct {v0, p0}, Lcom/android/calculator2/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;

    .line 48
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInitTask:Lcom/android/calculator2/Calculator$InitTask;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInitTask:Lcom/android/calculator2/Calculator$InitTask;

    invoke-virtual {v0, v2}, Lcom/android/calculator2/Calculator$InitTask;->cancel(Z)Z

    .line 51
    :cond_0
    new-instance v0, Lcom/android/calculator2/Calculator$InitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calculator2/Calculator$InitTask;-><init>(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Calculator$1;)V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mInitTask:Lcom/android/calculator2/Calculator$InitTask;

    .line 52
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInitTask:Lcom/android/calculator2/Calculator$InitTask;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Calculator$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 64
    .local v0, editInput:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/PreferenceManager;->setInputAndSelection(Ljava/lang/String;I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/PreferenceManager;->setResult(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->destroy()V

    .line 72
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 59
    return-void
.end method

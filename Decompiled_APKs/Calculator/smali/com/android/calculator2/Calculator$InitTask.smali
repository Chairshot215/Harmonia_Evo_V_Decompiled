.class Lcom/android/calculator2/Calculator$InitTask;
.super Landroid/os/AsyncTask;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/Calculator;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Calculator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator$InitTask;-><init>(Lcom/android/calculator2/Calculator;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    new-instance v4, Lcom/android/calculator2/Persist;

    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {v4, v5}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;
    invoke-static {v3, v4}, Lcom/android/calculator2/Calculator;->access$202(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Persist;)Lcom/android/calculator2/Persist;

    .line 103
    iget-object v3, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v4, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;
    invoke-static {v4}, Lcom/android/calculator2/Calculator;->access$200(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Persist;

    move-result-object v4

    iget-object v4, v4, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    #setter for: Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;
    invoke-static {v3, v4}, Lcom/android/calculator2/Calculator;->access$102(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/History;)Lcom/android/calculator2/History;

    .line 104
    iget-object v3, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;
    invoke-static {v3}, Lcom/android/calculator2/Calculator;->access$300(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calculator2/PreferenceManager;->getSelection()I

    move-result v2

    .line 105
    .local v2, selection:I
    iget-object v3, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;
    invoke-static {v3}, Lcom/android/calculator2/Calculator;->access$300(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calculator2/PreferenceManager;->getInput()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, input:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mPreferenceManager:Lcom/android/calculator2/PreferenceManager;
    invoke-static {v3}, Lcom/android/calculator2/Calculator;->access$300(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calculator2/PreferenceManager;->getResult()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator$InitTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/calculator2/Calculator$InitTask;->publishProgress([Ljava/lang/Object;)V

    .line 110
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10
    .parameter "values"

    .prologue
    .line 115
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    invoke-virtual {v5}, Lcom/android/calculator2/Calculator;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    const/4 v5, 0x0

    aget-object v3, p1, v5

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, result:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, input:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 120
    .local v4, selection:I
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    new-instance v6, Lcom/android/calculator2/Logic;

    iget-object v7, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v8, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;
    invoke-static {v8}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/History;

    move-result-object v8

    iget-object v9, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;
    invoke-static {v9}, Lcom/android/calculator2/Calculator;->access$500(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorDisplay;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V

    #setter for: Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;
    invoke-static {v5, v6}, Lcom/android/calculator2/Calculator;->access$402(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Logic;)Lcom/android/calculator2/Logic;

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;
    invoke-static {v5}, Lcom/android/calculator2/Calculator;->access$400(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Logic;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/calculator2/Logic;->setResult(Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v1, Lcom/android/calculator2/HistoryAdapter;

    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v6, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;
    invoke-static {v6}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/History;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;
    invoke-static {v7}, Lcom/android/calculator2/Calculator;->access$400(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Logic;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 125
    .local v1, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;
    invoke-static {v5}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/History;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 127
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v5, v5, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v6, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v7, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;
    invoke-static {v7}, Lcom/android/calculator2/Calculator;->access$400(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Logic;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/calculator2/EventListener;->setHandler(Landroid/content/Context;Lcom/android/calculator2/Logic;)V

    .line 128
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;
    invoke-static {v5}, Lcom/android/calculator2/Calculator;->access$500(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorDisplay;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v6, v6, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v5, v6}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 130
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;
    invoke-static {v5}, Lcom/android/calculator2/Calculator;->access$500(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 131
    .local v0, editInput:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    if-ltz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_1

    .line 135
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 139
    :cond_1
    iget-object v5, p0, Lcom/android/calculator2/Calculator$InitTask;->this$0:Lcom/android/calculator2/Calculator;

    #calls: Lcom/android/calculator2/Calculator;->findViews()V
    invoke-static {v5}, Lcom/android/calculator2/Calculator;->access$600(Lcom/android/calculator2/Calculator;)V

    .line 141
    .end local v0           #editInput:Landroid/widget/EditText;
    .end local v1           #historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    .end local v2           #input:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #selection:I
    :cond_2
    return-void
.end method

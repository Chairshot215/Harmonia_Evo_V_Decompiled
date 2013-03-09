.class public Lcom/htc/lmw/ProgressDialog;
.super Lcom/htc/dialog/HtcAlertDialog;
.source "ProgressDialog.java"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private progressMax:I

.field private text1Pattern:Ljava/lang/String;

.field private text1View:Landroid/widget/TextView;

.field private text2Pattern:Ljava/lang/String;

.field private text2_1View:Landroid/widget/TextView;

.field private text2_2View:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    iput v5, p0, Lcom/htc/lmw/ProgressDialog;->progressMax:I

    .line 16
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->text1Pattern:Ljava/lang/String;

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->text2Pattern:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/htc/lmw/Customize;->getDialogIcon()I

    move-result v0

    .line 29
    .local v0, iconId:I
    if-lez v0, :cond_0

    .line 30
    invoke-virtual {p0, v0}, Lcom/htc/lmw/ProgressDialog;->setIcon(I)V

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/htc/lmw/ProgressDialog;->setView(Landroid/view/View;)V

    .line 35
    invoke-static {p0}, Lcom/htc/lmw/Customize;->customizeDialog(Lcom/htc/dialog/HtcAlertDialog;)V

    .line 37
    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->text1View:Landroid/widget/TextView;

    .line 38
    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->text2_1View:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->text2_2View:Landroid/widget/TextView;

    .line 41
    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/htc/lmw/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 42
    iget-object v2, p0, Lcom/htc/lmw/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 77
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 11
    .parameter "progress"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v2

    .line 54
    .local v2, freeBytes:J
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v2

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float v4, v5, v6

    .line 56
    .local v4, freeMegabytes:F
    iget-object v5, p0, Lcom/htc/lmw/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 57
    iget-object v5, p0, Lcom/htc/lmw/ProgressDialog;->text1View:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/lmw/ProgressDialog;->text1Pattern:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p0, Lcom/htc/lmw/ProgressDialog;->progressMax:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, p0, Lcom/htc/lmw/ProgressDialog;->text2Pattern:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, formattedText:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, formattedTextTokens:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lmw/ProgressDialog;->text2_1View:Landroid/widget/TextView;

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v5, p0, Lcom/htc/lmw/ProgressDialog;->text2_2View:Landroid/widget/TextView;

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/lmw/ProgressDialog;->progressMax:I

    .line 48
    iget-object v0, p0, Lcom/htc/lmw/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 49
    return-void
.end method

.method public setText1Pattern(Ljava/lang/String;)V
    .locals 0
    .parameter "text1Pattern"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/lmw/ProgressDialog;->text1Pattern:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setText2Pattern(Ljava/lang/String;)V
    .locals 0
    .parameter "text2Pattern"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/lmw/ProgressDialog;->text2Pattern:Ljava/lang/String;

    .line 72
    return-void
.end method

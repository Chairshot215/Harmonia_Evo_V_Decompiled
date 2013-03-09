.class public Lcom/htc/app/HtcProgressDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mHasTitle:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x10302ef

    invoke-direct {p0, p1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;I)V

    iput v3, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    iput-boolean v3, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    const v1, 0x10302ef

    const-string v2, "Skin.ProgressDialog"

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/app/HtcProgressDialog;->getDialogThemeId(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/app/HtcProgressDialog;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/HtcProgressDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/HtcProgressDialog;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDialogThemeId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "style"

    iget-object v4, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, p3, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0
.end method

.method private onProgressChanged()V
    .locals 2

    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    new-instance v4, Lcom/htc/app/HtcProgressDialog$1;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcProgressDialog$1;-><init>(Lcom/htc/app/HtcProgressDialog;)V

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v4, 0x20900e5

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x202025b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v4, 0x202025d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const v4, 0x202025c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-boolean v4, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    const v6, 0x203003d

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    const v6, 0x203003d

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    :goto_1
    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    :cond_3
    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    :cond_4
    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    if-lez v4, :cond_5

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setSecondaryProgress(I)V

    :cond_5
    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    :cond_6
    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->incrementSecondaryProgressBy(I)V

    :cond_7
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_a
    iget-boolean v4, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_b
    const v4, 0x109007a

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v4, :cond_d

    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080452

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    :goto_2
    invoke-virtual {p0, v3}, Lcom/htc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcProgressDialog;->setInverseBackgroundForced(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

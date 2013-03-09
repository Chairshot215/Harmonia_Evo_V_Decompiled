.class public Lcom/google/android/gm/MinTimeProgressDialog;
.super Landroid/app/ProgressDialog;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedDismiss:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMinShowTime:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/MinTimeProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 51
    const v0, 0x7f11000a

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mMinShowTime:I

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mStartTime:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/google/android/gm/MinTimeProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MinTimeProgressDialog$1;-><init>(Lcom/google/android/gm/MinTimeProgressDialog;)V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/google/android/gm/MinTimeProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MinTimeProgressDialog$2;-><init>(Lcom/google/android/gm/MinTimeProgressDialog;)V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/MinTimeProgressDialog;->sMinShowTime:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/MinTimeProgressDialog;->sMinDelay:I

    .line 56
    sget v0, Lcom/google/android/gm/MinTimeProgressDialog;->sMinShowTime:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mMinShowTime:I

    .line 58
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/gm/MinTimeProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/MinTimeProgressDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z

    return v0
.end method

.method static synthetic access$201(Lcom/google/android/gm/MinTimeProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gm/MinTimeProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MinTimeProgressDialog;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, dialog:Lcom/google/android/gm/MinTimeProgressDialog;
    invoke-virtual {v0, p1}, Lcom/google/android/gm/MinTimeProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/google/android/gm/MinTimeProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/google/android/gm/MinTimeProgressDialog;->setIndeterminate(Z)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/google/android/gm/MinTimeProgressDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {v0, p5}, Lcom/google/android/gm/MinTimeProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    invoke-virtual {v0, v0}, Lcom/google/android/gm/MinTimeProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->show()V

    .line 117
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    .prologue
    .line 62
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mStartTime:J

    sub-long v0, v2, v4

    .line 64
    .local v0, diff:J
    iget v2, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mMinShowTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    iget v4, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mMinShowTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z

    .line 83
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/MinTimeProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mStartTime:J

    .line 99
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z

    .line 92
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/gm/MinTimeProgressDialog;->sMinDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.class public Lcom/android/mms/ui/EditSlideDurationActivity;
.super Landroid/app/Activity;
.source "EditSlideDurationActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final SLIDE_DUR:Ljava/lang/String; = "dur"

.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field public static final SLIDE_TOTAL:Ljava/lang/String; = "slide_total"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "EditSlideDurationActivity"


# instance fields
.field private mCurSlide:I

.field private mDone:Landroid/widget/Button;

.field private mDur:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private final mOnDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mState:Landroid/os/Bundle;

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 167
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$1;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 191
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$2;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 222
    return-void
.end method


# virtual methods
.method protected editDone()V
    .locals 5

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, dur:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->finish()V

    .line 216
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "Invalid duration! Please input again."

    invoke-direct {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 210
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/EditSlideDurationActivity;->requestWindowFeature(I)Z

    .line 78
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 81
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "slide_index"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 82
    const-string v5, "slide_total"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 83
    const-string v5, "dur"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .end local v3           #intent:Landroid/content/Intent;
    .local v1, dur:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 115
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0e003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    .line 117
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 120
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    const-string v6, "0123456789"

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 131
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 138
    :goto_1
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 139
    const v5, 0x104000a

    iget-object v6, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 140
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 143
    return-void

    .line 85
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dur:I
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const-string v5, "state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 87
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v6, "slide_index"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 88
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v6, "slide_total"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 89
    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v6, "dur"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #dur:I
    goto/16 :goto_0

    .line 136
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    iget v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_total"

    iget v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v2, "dur"

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    const-string v1, "state"

    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Invalid duration! Please input again."

    invoke-direct {p0, v1}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v2, "dur"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

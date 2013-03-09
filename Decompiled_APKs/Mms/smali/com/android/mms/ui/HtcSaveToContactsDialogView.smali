.class public Lcom/android/mms/ui/HtcSaveToContactsDialogView;
.super Landroid/widget/LinearLayout;
.source "HtcSaveToContactsDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;,
        Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionListActivity"


# instance fields
.field private mCreateButton:Landroid/widget/Button;

.field private mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

.field private msgText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->msgText:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButton:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButton:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    .line 29
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->msgText:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButton:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButton:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    .line 29
    iput-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 65
    const-string v1, "ActionListActivity"

    const-string v2, "onFinishInflate: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const v1, 0x7f0e004a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->msgText:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButton:Landroid/widget/Button;

    .line 68
    const v1, 0x7f0e004c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButton:Landroid/widget/Button;

    .line 70
    new-instance v0, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView$1;-><init>(Lcom/android/mms/ui/HtcSaveToContactsDialogView;)V

    .line 89
    .local v0, listener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public setCreateButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mCreateButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    .line 53
    return-void
.end method

.method public setMsgText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->msgText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public setSaveButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->mSaveButtonOnClickLisnter:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    .line 57
    return-void
.end method

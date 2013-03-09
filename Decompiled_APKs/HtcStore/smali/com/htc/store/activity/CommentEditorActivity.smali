.class public Lcom/htc/store/activity/CommentEditorActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "CommentEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;
    }
.end annotation


# static fields
.field private static final COMMENT_LENGTH_LIMIT:I = 0x96

.field private static final DIALOG_PROGRESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonPost:Landroid/widget/Button;

.field private mItem:Lcom/htc/store/module/vo/ItemItem;

.field private mLengthRemained:Landroid/widget/TextView;

.field private mOnButtonPostClickListener:Landroid/view/View$OnClickListener;

.field private mRenewRestHelperReceiver:Landroid/content/BroadcastReceiver;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field private mSipLauncher:Lcom/htc/store/module/SipLauncher;

.field private mTextComment:Landroid/widget/EditText;

.field private mUpdateCommentFailed:Z

.field private mUpdateCommentFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/store/activity/CommentEditorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/CommentEditorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mUpdateCommentFinished:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mUpdateCommentFailed:Z

    .line 182
    new-instance v0, Lcom/htc/store/activity/CommentEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/CommentEditorActivity$3;-><init>(Lcom/htc/store/activity/CommentEditorActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mOnButtonPostClickListener:Landroid/view/View$OnClickListener;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/store/activity/CommentEditorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/store/activity/CommentEditorActivity;->setLengthRemained(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/store/activity/CommentEditorActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/CommentEditorActivity;->setButtonEnabled(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/store/activity/CommentEditorActivity;)Lcom/htc/store/module/SipLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    const v1, 0x202022a

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    const v1, 0x202022e

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mLengthRemained:Landroid/widget/TextView;

    .line 130
    const/16 v1, 0x96

    invoke-direct {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->setLengthRemained(I)V

    .line 132
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;

    .line 135
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 136
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/store/activity/CommentEditorActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/CommentEditorActivity$1;-><init>(Lcom/htc/store/activity/CommentEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/store/activity/CommentEditorActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/CommentEditorActivity$2;-><init>(Lcom/htc/store/activity/CommentEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    const v1, 0x2020001

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    .line 167
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    const v2, 0x7f0a0041

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/store/activity/CommentEditorActivity;->mOnButtonPostClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    invoke-direct {p0, v1, v3}, Lcom/htc/store/activity/CommentEditorActivity;->setButtonEnabled(Landroid/widget/Button;Z)V

    .line 170
    return-void
.end method

.method private setButtonEnabled(Landroid/widget/Button;Z)V
    .locals 0
    .parameter "button"
    .parameter "enabled"

    .prologue
    .line 178
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 180
    return-void
.end method

.method private setLengthRemained(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mLengthRemained:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/htc/store/activity/CommentEditorActivity;->initViews()V

    .line 44
    new-instance v1, Lcom/htc/store/module/SipLauncher;

    invoke-direct {v1, p0}, Lcom/htc/store/module/SipLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;

    .line 46
    invoke-virtual {p0}, Lcom/htc/store/activity/CommentEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "item_item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/ItemItem;

    .line 47
    .local v0, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v0, :cond_0

    .line 48
    iput-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mItem:Lcom/htc/store/module/vo/ItemItem;

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v1, Lcom/htc/store/activity/CommentEditorActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "No item info."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/store/activity/CommentEditorActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0

    .line 112
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    move-object v1, v0

    .line 113
    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    move-object v1, v0

    .line 114
    check-cast v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/CommentEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 116
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mDefaultOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;

    invoke-virtual {v0}, Lcom/htc/store/module/SipLauncher;->destroy()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mRenewRestHelperReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mRenewRestHelperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/CommentEditorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_2
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 69
    iget-boolean v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mUpdateCommentFinished:Z

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/htc/store/activity/CommentEditorActivity;->mUpdateCommentFinished:Z

    .line 71
    invoke-virtual {p0, v1}, Lcom/htc/store/activity/CommentEditorActivity;->removeDialog(I)V

    .line 72
    iget-boolean v0, p0, Lcom/htc/store/activity/CommentEditorActivity;->mUpdateCommentFailed:Z

    if-eqz v0, :cond_0

    .line 77
    :cond_0
    return-void
.end method

.method protected setTitleText(II)V
    .locals 1
    .parameter "stringId"
    .parameter "titleId"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/CommentEditorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/store/activity/CommentEditorActivity;->setTitleText(Ljava/lang/CharSequence;I)V

    .line 98
    return-void
.end method

.method protected setTitleText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "titleId"

    .prologue
    .line 101
    invoke-virtual {p0, p2}, Lcom/htc/store/activity/CommentEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method

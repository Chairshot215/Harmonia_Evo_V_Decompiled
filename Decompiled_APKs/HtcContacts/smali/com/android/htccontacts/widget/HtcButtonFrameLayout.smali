.class public Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
.super Lcom/htc/widget/HtcFooter;
.source "HtcButtonFrameLayout.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "cancel"

.field public static final DELETE_CANCEL:Ljava/lang/String; = "delete_cancel"

.field public static final DONE:Ljava/lang/String; = "done"

.field public static final DONE_CANCEL:Ljava/lang/String; = "done_cancel"

.field public static final NEXT_CANCEL:Ljava/lang/String; = "next_cancel"

.field public static final OK_CANCEL:Ljava/lang/String; = "ok_cancel"

.field public static final SAVE_CANCEL:Ljava/lang/String; = "save_cancel"

.field public static final SEND_CANCEL:Ljava/lang/String; = "send_cancel"


# instance fields
.field protected mButtonCancelRes:I

.field protected mButtonDeleteRes:I

.field protected mButtonDoneRes:I

.field protected mButtonNextRes:I

.field protected mButtonNum:I

.field protected mButtonOKRes:I

.field protected mButtonSaveRes:I

.field protected mButtonSendRes:I

.field protected mButtonStyle:Ljava/lang/String;

.field protected mHtcFooter:Lcom/htc/widget/HtcFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/htc/widget/HtcFooter;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private buildButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0a0154

    const v8, 0x7f0a0152

    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    .local v2, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 121
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->initButtonRes()V

    .line 128
    const-string v6, "layout_inflater"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 129
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->removeAllViews()V

    .line 130
    const/4 v5, 0x0

    .line 132
    .local v5, layoutRes:I
    iget v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 136
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, b1:Lcom/htc/widget/HtcFooterButton;
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->addView(Landroid/view/View;)V

    .line 201
    :goto_1
    return-void

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "done"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    const v6, 0x7f0a00d6

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    .end local v0           #b1:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 159
    .restart local v0       #b1:Lcom/htc/widget/HtcFooterButton;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, b2:Lcom/htc/widget/HtcFooterButton;
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "ok_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    const v6, 0x7f0a014f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 166
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "save_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 167
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "next_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    const v6, 0x7f0a0153

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 176
    :cond_5
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "done_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    const v6, 0x7f0a0150

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 181
    :cond_6
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "send_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 182
    const v6, 0x7f0a0151

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :cond_7
    iget-object v6, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v7, "delete_cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 187
    const v6, 0x7f0a013d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 192
    :cond_8
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private checkStyle(Ljava/lang/String;)Z
    .locals 2
    .parameter "style"

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v1, "cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "done"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ok_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "save_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "done_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "next_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "send_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "delete_cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/htccontacts/R$styleable;->HtcButtonFrameLayout:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    .local v1, typedArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v3, "done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #typedArray:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->buildButtons()V

    .line 82
    return-void

    .line 70
    .restart local v1       #typedArray:Landroid/content/res/TypedArray;
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v1           #typedArray:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ok_cancel"

    iput-object v2, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    .line 74
    iput v4, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I

    .line 75
    const-string v2, "HtcButtonFrameLayout"

    const-string v3, "attr resources not defiend, used the default button layout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initButtonRes()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonSaveRes:I

    .line 108
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonCancelRes:I

    .line 109
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNextRes:I

    .line 110
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonSendRes:I

    .line 111
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonOKRes:I

    .line 112
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonDoneRes:I

    .line 113
    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonDeleteRes:I

    .line 114
    return-void
.end method


# virtual methods
.method public getButton1View()Lcom/htc/widget/HtcFooterButton;
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    goto :goto_0
.end method

.method public getButton2View()Lcom/htc/widget/HtcFooterButton;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    goto :goto_0
.end method

.method public rebuildButtons(Ljava/lang/String;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->checkStyle(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonStyle:Ljava/lang/String;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I

    .line 103
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->buildButtons()V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->mButtonNum:I

    goto :goto_1
.end method

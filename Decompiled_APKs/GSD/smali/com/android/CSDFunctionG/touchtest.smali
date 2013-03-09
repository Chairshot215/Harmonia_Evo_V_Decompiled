.class public Lcom/android/CSDFunctionG/touchtest;
.super Landroid/app/Activity;
.source "touchtest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/touchtest$MyView;
    }
.end annotation


# static fields
.field public static LineDraw_InstructMsg:Landroid/widget/TextView; = null

.field public static LineDraw_NextStepMsg:Landroid/widget/TextView; = null

.field static final TAG:Ljava/lang/String; = "CSD_Touchtest"

.field static final VERSION:Ljava/lang/String; = "1.1"


# instance fields
.field private final LFP:I

.field private final LWC:I

.field private final OPTION_MENU_CLEAR:I

.field public StartTestFlag:Z

.field public Touch_Endtest:Z

.field public Touch_Flag:Z

.field private all_layout:Landroid/widget/LinearLayout;

.field public i_mode:I

.field private mHandler:Landroid/os/Handler;

.field mToast:Landroid/widget/Toast;

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field point:I

.field testview:Lcom/android/CSDFunctionG/touchtest$MyView;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;

.field tplog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    .line 54
    sput-object v0, Lcom/android/CSDFunctionG/touchtest;->LineDraw_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, "TP test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->tplog:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/android/CSDFunctionG/touchtest;->point:I

    .line 38
    iput v3, p0, Lcom/android/CSDFunctionG/touchtest;->OPTION_MENU_CLEAR:I

    .line 39
    iput-object v2, p0, Lcom/android/CSDFunctionG/touchtest;->testview:Lcom/android/CSDFunctionG/touchtest$MyView;

    .line 41
    iput v1, p0, Lcom/android/CSDFunctionG/touchtest;->i_mode:I

    .line 43
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/touchtest;->LWC:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/touchtest;->LFP:I

    .line 49
    iput-object v2, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    .line 50
    iput-object v2, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v2, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/touchtest;->Touch_Flag:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/touchtest;->Touch_Endtest:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/touchtest;->StartTestFlag:Z

    .line 146
    new-instance v0, Lcom/android/CSDFunctionG/touchtest$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/touchtest$3;-><init>(Lcom/android/CSDFunctionG/touchtest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/touchtest;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public PassorFail()V
    .locals 4

    .prologue
    .line 118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 123
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/touchtest$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/touchtest$1;-><init>(Lcom/android/CSDFunctionG/touchtest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/touchtest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/touchtest$2;-><init>(Lcom/android/CSDFunctionG/touchtest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 143
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v4, 0x400

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 68
    .local v2, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "TestMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/CSDFunctionG/touchtest;->i_mode:I

    .line 72
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-virtual {p0, v8}, Lcom/android/CSDFunctionG/touchtest;->requestWindowFeature(I)Z

    .line 76
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    .line 85
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    .line 91
    sget-object v3, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/CSDFunctionG/touchtest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x1e

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    .line 99
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/CSDFunctionG/touchtest;->LineDraw_NextStepMsg:Landroid/widget/TextView;

    .line 105
    sget-object v3, Lcom/android/CSDFunctionG/touchtest;->LineDraw_NextStepMsg:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/android/CSDFunctionG/touchtest;->LineDraw_NextStepMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/CSDFunctionG/touchtest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0xa

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    const/16 v4, 0x32

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/touchtest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/touchtest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/touchtest;->setContentView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 178
    const-string v0, "Clear screen"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 180
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 375
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 377
    iget-boolean v1, p0, Lcom/android/CSDFunctionG/touchtest;->Touch_Endtest:Z

    if-ne v1, v0, :cond_3

    .line 379
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 386
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest;->tplog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 387
    const-string v1, "TP test End\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->finish()V

    .line 396
    :cond_3
    :goto_0
    return v0

    .line 393
    :cond_4
    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    .line 394
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 189
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 192
    :pswitch_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->testview:Lcom/android/CSDFunctionG/touchtest$MyView;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->testview:Lcom/android/CSDFunctionG/touchtest$MyView;

    invoke-virtual {v1}, Lcom/android/CSDFunctionG/touchtest$MyView;->EraseView()V

    .line 195
    const-string v1, "CSD_Touchtest"

    const-string v2, "CLEAN SVREEN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 342
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 353
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest;->tplog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 354
    const-string v0, "TP test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->finish()V

    .line 356
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 400
    const-string v0, "CSD_Touchtest"

    const-string v1, "onTouchEvent() ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/touchtest;->Touch_Flag:Z

    if-ne v0, v4, :cond_0

    .line 404
    new-instance v0, Lcom/android/CSDFunctionG/touchtest$MyView;

    invoke-direct {v0, p0, p0}, Lcom/android/CSDFunctionG/touchtest$MyView;-><init>(Lcom/android/CSDFunctionG/touchtest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->testview:Lcom/android/CSDFunctionG/touchtest$MyView;

    .line 405
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->testview:Lcom/android/CSDFunctionG/touchtest$MyView;

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/touchtest;->setContentView(Landroid/view/View;)V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/CSDFunctionG/touchtest;->Touch_Flag:Z

    .line 407
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest;->showToast()V

    .line 411
    :cond_0
    return v4
.end method

.method public showToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 360
    const v3, 0x7f060016

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    .line 361
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, textView:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, iView:Landroid/widget/ImageView;
    const v3, 0x7f02000d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 369
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x10

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 370
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method

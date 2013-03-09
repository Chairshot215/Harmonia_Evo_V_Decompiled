.class public Lcom/android/CSDFunctionG/declare;
.super Landroid/app/Activity;
.source "declare.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CSD_declare"

.field public static TXTcaption:Landroid/widget/TextView;

.field public static tv_NextStep:Landroid/widget/TextView;

.field public static tv_declare1:Landroid/widget/TextView;

.field public static tv_declare2:Landroid/widget/TextView;

.field public static tv_declare3:Landroid/widget/TextView;

.field public static tv_instruct:Landroid/widget/TextView;


# instance fields
.field GpsToast:Landroid/widget/Toast;

.field public i_mode:I

.field private mHandler:Landroid/os/Handler;

.field textToast:Landroid/widget/Toast;

.field textToast1:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    .line 25
    sput-object v0, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    .line 26
    sput-object v0, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    .line 27
    sput-object v0, Lcom/android/CSDFunctionG/declare;->tv_declare3:Landroid/widget/TextView;

    .line 29
    sput-object v0, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    .line 30
    sput-object v0, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 236
    new-instance v0, Lcom/android/CSDFunctionG/declare$2;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/declare$2;-><init>(Lcom/android/CSDFunctionG/declare;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 437
    sparse-switch p1, :sswitch_data_0

    .line 468
    :goto_0
    return-void

    .line 440
    :sswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto :goto_0

    .line 445
    :sswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto :goto_0

    .line 450
    :sswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 452
    :cond_2
    const/16 v0, 0x12f

    iput v0, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    goto :goto_0

    .line 455
    :sswitch_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto :goto_0

    .line 460
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto :goto_0

    .line 463
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto :goto_0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_2
        0x1bc -> :sswitch_3
        0x22b -> :sswitch_4
        0x29a -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v8, 0x7f02002b

    const/16 v4, 0x400

    const/4 v7, 0x7

    const v6, 0x7f06000d

    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 40
    .local v2, win:Landroid/view/Window;
    invoke-virtual {p0, v7}, Lcom/android/CSDFunctionG/declare;->requestWindowFeature(I)Z

    .line 42
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "ModeTest"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 46
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    .line 49
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare3:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030008

    invoke-virtual {v3, v7, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 56
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/declare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    .line 59
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 62
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02001f

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 63
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060069

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060068

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 65
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 161
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    .line 165
    :cond_1
    return-void

    .line 67
    :cond_2
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 69
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02002f

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 70
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060065

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 71
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060064

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 72
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 74
    :cond_3
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 76
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f020001

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 77
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f06006d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 78
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 79
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 81
    :cond_4
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 83
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02002a

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 84
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060078

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 85
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060077

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 86
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    :cond_5
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 90
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f020002

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 91
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 92
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 93
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 94
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 97
    :cond_6
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 100
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02001c

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f06007c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 102
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06007a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 103
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 106
    :cond_7
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    if-ne v3, v7, :cond_8

    .line 109
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02000e

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 110
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f06007e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 111
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v4, 0x7f06007f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06007d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 113
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 117
    :cond_8
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 119
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 120
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v4, 0x7f060083

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 121
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060081

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 123
    :cond_9
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    .line 125
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f02000a

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 126
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060087

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 128
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 130
    :cond_a
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/16 v3, 0x22b

    invoke-virtual {p0, v1, v3}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 136
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_c

    .line 138
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v4, 0x7f020014

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 139
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060072

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 140
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 141
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 143
    :cond_c
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_d

    .line 145
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 146
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f060048

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 147
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v4, 0x7f060049

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 148
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06003d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 149
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 152
    :cond_d
    iget v3, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 154
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 155
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v4, 0x7f06005a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 156
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v4, 0x7f06005b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 157
    sget-object v3, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06004a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    sget-object v3, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 472
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->GpsToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->GpsToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 484
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x2710

    const/16 v6, 0x6f

    const v5, 0x7f06000d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    sparse-switch v1, :sswitch_data_0

    .line 431
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 267
    .restart local v0       #intent:Landroid/content/Intent;
    :sswitch_0
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 268
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020007

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 269
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 271
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 272
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :sswitch_1
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 276
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020008

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 277
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 279
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 282
    :sswitch_2
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 290
    :sswitch_3
    const/16 v1, 0xca

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 291
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020030

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 292
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 293
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 294
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 297
    :sswitch_4
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 305
    :sswitch_5
    const/16 v1, 0x12e

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 306
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 307
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 309
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 310
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 313
    :sswitch_6
    const/16 v1, 0x3e7

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 314
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 321
    const/16 v1, 0x14d

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 324
    :sswitch_7
    const/16 v1, 0x192

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 325
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020009

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 326
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060079

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 331
    :sswitch_8
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 332
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    :cond_4
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0, v6}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 337
    :sswitch_9
    const/16 v1, 0x1f6

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 338
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020012

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 339
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 342
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 345
    :sswitch_a
    const/16 v1, 0x1f7

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 346
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020004

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 347
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 348
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 350
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 353
    :sswitch_b
    const-string v1, "Battery test\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 354
    const-class v1, Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    const/16 v1, 0x29a

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 359
    :sswitch_c
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 360
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 361
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0, v6}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 366
    :sswitch_d
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 367
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 370
    :cond_6
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HtcAboutPhoneMasterClearActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0, v6}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 376
    :sswitch_e
    const/16 v1, 0x322

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 377
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060084

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 378
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v2, 0x7f060085

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 379
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare3:Landroid/widget/TextView;

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 382
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/declare;->finish()V

    goto/16 :goto_0

    .line 385
    :sswitch_10
    const/16 v1, 0x386

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 386
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f02000b

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 387
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060089

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 388
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060087

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 389
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 392
    :sswitch_11
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$Power"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 399
    const/16 v1, 0xde

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 402
    :sswitch_12
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 403
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_instruct:Landroid/widget/TextView;

    const v2, 0x7f020013

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 404
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare1:Landroid/widget/TextView;

    const v2, 0x7f060073

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 405
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_declare2:Landroid/widget/TextView;

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 406
    sget-object v1, Lcom/android/CSDFunctionG/declare;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 407
    sget-object v1, Lcom/android/CSDFunctionG/declare;->tv_NextStep:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 410
    :sswitch_13
    const/16 v1, 0x3e7

    iput v1, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    .line 411
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 412
    iget-object v1, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 418
    const/16 v1, 0x14d

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 421
    :sswitch_14
    const-class v1, Lcom/android/CSDFunctionG/audiotest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 422
    const/16 v1, 0xde

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 425
    :sswitch_15
    const-class v1, Lcom/android/CSDFunctionG/headsetstatus;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    const/16 v1, 0xde

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_e
        0x9 -> :sswitch_10
        0xb -> :sswitch_12
        0xc -> :sswitch_14
        0xd -> :sswitch_15
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x70 -> :sswitch_13
        0xca -> :sswitch_4
        0x12e -> :sswitch_6
        0x192 -> :sswitch_8
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_b
        0x322 -> :sswitch_f
        0x386 -> :sswitch_11
    .end sparse-switch
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    const-string v4, "CSD_declare"

    const-string v5, "onResume ..... !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v4, p0, Lcom/android/CSDFunctionG/declare;->i_mode:I

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_1

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/CSDFunctionG/declare;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.google.android.apps.maps"

    const-string v5, "com.google.android.maps.MapsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/16 v4, 0x22b

    invoke-virtual {p0, v3, v4}, Lcom/android/CSDFunctionG/declare;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, MyAlertDialog:Landroid/app/AlertDialog$Builder;
    const-string v4, "GPS\tTest"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    const-string v4, "Don\'t\tsupport\tgoogle map!!"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    new-instance v1, Lcom/android/CSDFunctionG/declare$1;

    invoke-direct {v1, p0}, Lcom/android/CSDFunctionG/declare$1;-><init>(Lcom/android/CSDFunctionG/declare;)V

    .line 193
    .local v1, OkClick:Landroid/content/DialogInterface$OnClickListener;
    const-string v4, "OK"

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    const-string v4, "CSD_declare"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 204
    const-string v0, "CSD_declare"

    const-string v1, "onStart ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

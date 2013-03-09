.class public Lcom/android/CSDFunctionG/buttontest;
.super Landroid/app/Activity;
.source "buttontest.java"


# static fields
.field public static TXTcaption:Landroid/widget/TextView;

.field public static TxtInstruct:Landroid/widget/TextView;

.field public static TxtNextStep:Landroid/widget/TextView;


# instance fields
.field KEY_MAPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field KeyCount:I

.field KeyDown_MAPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVictim:Landroid/view/View;

.field sap:Lcom/android/CSDFunctionG/csdfunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/android/CSDFunctionG/buttontest;->TXTcaption:Landroid/widget/TextView;

    .line 24
    sput-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtNextStep:Landroid/widget/TextView;

    .line 25
    sput-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/android/CSDFunctionG/csdfunction;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/csdfunction;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->sap:Lcom/android/CSDFunctionG/csdfunction;

    return-void
.end method


# virtual methods
.method public PassorFail()V
    .locals 6

    .prologue
    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060008

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 72
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 74
    const v4, 0x7f060009

    new-instance v5, Lcom/android/CSDFunctionG/buttontest$1;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/buttontest$1;-><init>(Lcom/android/CSDFunctionG/buttontest;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    const v4, 0x7f06000a

    new-instance v5, Lcom/android/CSDFunctionG/buttontest$2;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/buttontest$2;-><init>(Lcom/android/CSDFunctionG/buttontest;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 89
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 91
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xa

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 92
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0x18

    const/4 v3, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/buttontest;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/buttontest;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 33
    .local v0, win:Landroid/view/Window;
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/buttontest;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/buttontest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 37
    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 39
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/buttontest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/CSDFunctionG/buttontest;->TXTcaption:Landroid/widget/TextView;

    .line 40
    sget-object v1, Lcom/android/CSDFunctionG/buttontest;->TXTcaption:Landroid/widget/TextView;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080007

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080006

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iput v1, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    .line 58
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/buttontest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    .line 59
    sget-object v1, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    const v2, 0x7f020025

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 61
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/buttontest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/CSDFunctionG/buttontest;->TxtNextStep:Landroid/widget/TextView;

    .line 62
    sget-object v1, Lcom/android/CSDFunctionG/buttontest;->TxtNextStep:Landroid/widget/TextView;

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const-string v0, "KeyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KEY_MAPS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/buttontest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->mVictim:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->mVictim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->mVictim:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyDown_MAPS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    if-nez v0, :cond_2

    .line 115
    sget-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    sget-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 117
    sget-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtInstruct:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    sget-object v0, Lcom/android/CSDFunctionG/buttontest;->TxtNextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/buttontest;->PassorFail()V

    .line 122
    :cond_2
    iget v0, p0, Lcom/android/CSDFunctionG/buttontest;->KeyCount:I

    if-nez v0, :cond_3

    if-ne p1, v5, :cond_3

    .line 124
    const-string v0, "Button test end\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/buttontest;->finish()V

    .line 128
    :cond_3
    return v4
.end method

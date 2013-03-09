.class public Lcom/android/CSDFunctionG/Instruction;
.super Landroid/app/Activity;
.source "Instruction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final Endinstruct:I = 0x378

.field public static tv_Instruct:Landroid/widget/TextView;


# instance fields
.field private m_btn_Canel:Landroid/widget/Button;

.field private m_button:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/CSDFunctionG/Instruction;->tv_Instruct:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_button:Landroid/widget/Button;

    .line 13
    iput-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_btn_Canel:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Instruction;->finish()V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "viewObject"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/CSDFunctionG/Instruction;->m_button:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    const/16 v1, 0x378

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/Instruction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/Instruction;->m_btn_Canel:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Instruction;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/Instruction;->setContentView(I)V

    .line 22
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/Instruction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/CSDFunctionG/Instruction;->tv_Instruct:Landroid/widget/TextView;

    .line 23
    sget-object v0, Lcom/android/CSDFunctionG/Instruction;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 25
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/Instruction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_button:Landroid/widget/Button;

    .line 26
    iget-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/Instruction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_btn_Canel:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/android/CSDFunctionG/Instruction;->m_btn_Canel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {}, Lcom/android/CSDFunctionG/GSDtesttool;->deletelogfile()V

    .line 32
    return-void
.end method

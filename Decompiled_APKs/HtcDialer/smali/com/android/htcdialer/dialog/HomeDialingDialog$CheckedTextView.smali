.class Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;
.super Ljava/lang/Object;
.source "HomeDialingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/dialog/HomeDialingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckedTextView"
.end annotation


# instance fields
.field private cb:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

.field private txt1:Landroid/widget/TextView;

.field private txt2:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/dialog/HomeDialingDialog;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "v"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    const v1, 0x2020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt1:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    const v1, 0x2020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt2:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    const v1, 0x20200fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->cb:Landroid/widget/RadioButton;

    .line 109
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->cb:Landroid/widget/RadioButton;

    return-object v0
.end method

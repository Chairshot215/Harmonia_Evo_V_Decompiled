.class Lcom/android/calculator2/CalculatorDisplay$1;
.super Landroid/text/method/NumberKeyListener;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorDisplay;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/android/calculator2/CalculatorDisplay;->access$000()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

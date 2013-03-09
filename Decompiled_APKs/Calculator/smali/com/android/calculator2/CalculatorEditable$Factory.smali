.class public Lcom/android/calculator2/CalculatorEditable$Factory;
.super Landroid/text/Editable$Factory;
.source "CalculatorEditable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorEditable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mLogic:Lcom/android/calculator2/Logic;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/Logic;)V
    .locals 0
    .parameter "logic"

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/calculator2/CalculatorEditable$Factory;->mLogic:Lcom/android/calculator2/Logic;

    .line 109
    return-void
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 3
    .parameter "source"

    .prologue
    .line 112
    new-instance v0, Lcom/android/calculator2/CalculatorEditable;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorEditable$Factory;->mLogic:Lcom/android/calculator2/Logic;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/calculator2/CalculatorEditable;-><init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;Lcom/android/calculator2/CalculatorEditable$1;)V

    return-object v0
.end method

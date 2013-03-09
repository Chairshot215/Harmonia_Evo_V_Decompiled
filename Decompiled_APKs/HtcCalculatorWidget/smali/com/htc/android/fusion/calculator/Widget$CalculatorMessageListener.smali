.class Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fusion/calculator/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculatorMessageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mButtonId:I

.field final synthetic this$0:Lcom/htc/android/fusion/calculator/Widget;


# direct methods
.method public constructor <init>(Lcom/htc/android/fusion/calculator/Widget;I)V
    .locals 0
    .parameter
    .parameter "buttonId"

    .prologue
    .line 721
    .local p0, this:Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;,"Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener<TT;>;"
    iput-object p1, p0, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 722
    iput p2, p0, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;->mButtonId:I

    .line 723
    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, this:Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;,"Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener<TT;>;"
    .local p1, message:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    iget v1, p0, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;->mButtonId:I

    #calls: Lcom/htc/android/fusion/calculator/Widget;->onButtonClick(I)V
    invoke-static {v0, v1}, Lcom/htc/android/fusion/calculator/Widget;->access$500(Lcom/htc/android/fusion/calculator/Widget;I)V

    .line 728
    return-void
.end method

.class Lcom/android/browser/PieControlXLarge$2;
.super Ljava/lang/Object;
.source "PieControlXLarge.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControlXLarge;->populateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControlXLarge;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControlXLarge;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/browser/PieControlXLarge$2;->this$0:Lcom/android/browser/PieControlXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIZ)V
    .locals 1
    .parameter "ax"
    .parameter "ay"
    .parameter "left"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/PieControlXLarge$2;->this$0:Lcom/android/browser/PieControlXLarge;

    #calls: Lcom/android/browser/PieControlXLarge;->buildMenu()V
    invoke-static {v0}, Lcom/android/browser/PieControlXLarge;->access$100(Lcom/android/browser/PieControlXLarge;)V

    .line 101
    return-void
.end method

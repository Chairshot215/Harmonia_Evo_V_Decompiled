.class Lcom/android/browser/PieControlPhone$1;
.super Ljava/lang/Object;
.source "PieControlPhone.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControlPhone;->populateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControlPhone;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControlPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/browser/PieControlPhone$1;->this$0:Lcom/android/browser/PieControlPhone;

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
    .line 60
    iget-object v0, p0, Lcom/android/browser/PieControlPhone$1;->this$0:Lcom/android/browser/PieControlPhone;

    #calls: Lcom/android/browser/PieControlPhone;->buildTabs()V
    invoke-static {v0}, Lcom/android/browser/PieControlPhone;->access$000(Lcom/android/browser/PieControlPhone;)V

    .line 61
    return-void
.end method

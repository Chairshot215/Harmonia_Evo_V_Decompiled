.class Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuyButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->beginCheckout()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$300(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 169
    return-void
.end method

.class Lcom/google/android/finsky/activities/PurchaseFragment$12;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$12;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$12;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$3000(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 1376
    return-void
.end method

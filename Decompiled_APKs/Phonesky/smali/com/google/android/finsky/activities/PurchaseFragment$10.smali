.class Lcom/google/android/finsky/activities/PurchaseFragment$10;
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
    .line 1351
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$10;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$10;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2802(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z

    .line 1355
    return-void
.end method

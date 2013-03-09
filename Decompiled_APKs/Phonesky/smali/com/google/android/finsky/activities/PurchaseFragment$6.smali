.class Lcom/google/android/finsky/activities/PurchaseFragment$6;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcb2Provisioning()V
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
    .line 867
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$6;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$6;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2100(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 871
    return-void
.end method

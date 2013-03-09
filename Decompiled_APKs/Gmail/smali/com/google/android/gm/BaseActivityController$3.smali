.class Lcom/google/android/gm/BaseActivityController$3;
.super Ljava/lang/Object;
.source "BaseActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseActivityController;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseActivityController;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseActivityController;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$3;->this$0:Lcom/google/android/gm/BaseActivityController;

    iput-object p2, p0, Lcom/google/android/gm/BaseActivityController$3;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$3;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$3;->val$menuItem:Landroid/view/MenuItem;

    #calls: Lcom/google/android/gm/BaseActivityController;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    invoke-static {v0, v1}, Lcom/google/android/gm/BaseActivityController;->access$400(Lcom/google/android/gm/BaseActivityController;Landroid/view/MenuItem;)Z

    .line 529
    return-void
.end method

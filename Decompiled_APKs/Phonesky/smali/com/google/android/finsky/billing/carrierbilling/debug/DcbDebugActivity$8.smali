.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 170
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;)V

    const-string v3, "DCB GServices Values"

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v2, "dcbGservices"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 178
    return-void
.end method

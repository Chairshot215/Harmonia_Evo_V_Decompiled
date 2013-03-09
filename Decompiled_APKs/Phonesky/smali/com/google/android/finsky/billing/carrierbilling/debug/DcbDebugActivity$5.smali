.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;
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
    .line 148
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayProvisioning()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$500(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 152
    return-void
.end method

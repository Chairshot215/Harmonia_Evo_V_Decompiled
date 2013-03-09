.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;
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
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayDcbParams()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$700(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 164
    return-void
.end method

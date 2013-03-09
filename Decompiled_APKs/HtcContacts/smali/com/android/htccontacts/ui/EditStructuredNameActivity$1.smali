.class Lcom/android/htccontacts/ui/EditStructuredNameActivity$1;
.super Ljava/lang/Object;
.source "EditStructuredNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditStructuredNameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$1;->this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$1;->this$0:Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    #calls: Lcom/android/htccontacts/ui/EditStructuredNameActivity;->accept()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->access$000(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V

    .line 138
    return-void
.end method

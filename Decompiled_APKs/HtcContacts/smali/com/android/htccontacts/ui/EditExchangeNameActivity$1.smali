.class Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;
.super Ljava/lang/Object;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #calls: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->accept()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$000(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    .line 126
    return-void
.end method

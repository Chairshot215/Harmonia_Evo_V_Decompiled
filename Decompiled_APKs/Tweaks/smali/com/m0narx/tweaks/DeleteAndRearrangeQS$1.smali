.class Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeQS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->finish()V

    return-void
.end method

.class Landroid/webkit/QuickActionsHelper$1;
.super Ljava/lang/Object;
.source "QuickActionsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/QuickActionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/QuickActionsHelper;


# direct methods
.method constructor <init>(Landroid/webkit/QuickActionsHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/QuickActionsHelper$1;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper$1;->this$0:Landroid/webkit/QuickActionsHelper;

    #getter for: Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;
    invoke-static {v1}, Landroid/webkit/QuickActionsHelper;->access$000(Landroid/webkit/QuickActionsHelper;)Lcom/htc/textselection/QuickActions;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/textselection/QuickActions;->onQuickActionItemClicked(I)V

    return-void
.end method

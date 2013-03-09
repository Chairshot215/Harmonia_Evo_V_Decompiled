.class Lcom/htc/dmc/DmrListActivity$7;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$7;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$7;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->DMRSelected()V
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$300(Lcom/htc/dmc/DmrListActivity;)V

    .line 1113
    return-void
.end method

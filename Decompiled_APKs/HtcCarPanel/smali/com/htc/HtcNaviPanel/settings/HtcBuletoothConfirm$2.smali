.class Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$2;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$2;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$2;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->finish()V

    .line 66
    return-void
.end method

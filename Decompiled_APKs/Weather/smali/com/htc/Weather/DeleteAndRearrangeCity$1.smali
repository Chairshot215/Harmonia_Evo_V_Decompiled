.class Lcom/htc/Weather/DeleteAndRearrangeCity$1;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeCity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$1;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$1;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->finish()V

    return-void
.end method

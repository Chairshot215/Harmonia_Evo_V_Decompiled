.class Lcom/htc/home/personalize/IdleScreenPreview$2;
.super Ljava/lang/Object;
.source "IdleScreenPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/IdleScreenPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/IdleScreenPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/IdleScreenPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/home/personalize/IdleScreenPreview$2;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$2;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/IdleScreenPreview;->setIdleScreen(Landroid/view/View;)V

    .line 294
    return-void
.end method

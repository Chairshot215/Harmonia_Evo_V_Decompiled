.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$3;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$3;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$3;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    .line 454
    return-void
.end method

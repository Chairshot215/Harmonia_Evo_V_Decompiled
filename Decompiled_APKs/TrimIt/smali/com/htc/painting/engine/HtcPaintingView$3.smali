.class Lcom/htc/painting/engine/HtcPaintingView$3;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;

.field final synthetic val$ctxt:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$3;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iput-object p2, p0, Lcom/htc/painting/engine/HtcPaintingView$3;->val$ctxt:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$3;->val$ctxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/painting/util/PenHelper;->initPens(Landroid/content/Context;)V

    .line 233
    return-void
.end method

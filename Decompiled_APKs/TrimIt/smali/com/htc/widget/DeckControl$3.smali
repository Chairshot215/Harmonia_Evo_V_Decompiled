.class Lcom/htc/widget/DeckControl$3;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControl;


# direct methods
.method constructor <init>(Lcom/htc/widget/DeckControl;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/widget/DeckControl$3;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerateBackground()Lcom/htc/sunny/SBitmap;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/widget/DeckControl$3;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;
    invoke-static {v0}, Lcom/htc/widget/DeckControl;->access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    return-object v0
.end method

.class Lcom/htc/widget/DeckControl$2;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$DCAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V
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
    .line 326
    iput-object p1, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    .line 334
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    .line 339
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControl;->notifyUpdateItem(I)V

    .line 330
    return-void
.end method

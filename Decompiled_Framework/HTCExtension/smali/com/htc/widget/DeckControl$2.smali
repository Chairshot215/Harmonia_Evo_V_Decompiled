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

    iput-object p1, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControl;->notifyUpdateItem(I)V

    return-void
.end method

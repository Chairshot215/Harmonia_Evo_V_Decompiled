.class Lcom/futuredial/ui/FuturedialTest$2;
.super Ljava/lang/Object;
.source "FuturedialTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/FuturedialTest;->set_view()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/FuturedialTest;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/FuturedialTest;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/futuredial/ui/FuturedialTest$2;->this$0:Lcom/futuredial/ui/FuturedialTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest$2;->this$0:Lcom/futuredial/ui/FuturedialTest;

    const/4 v1, 0x0

    #calls: Lcom/futuredial/ui/FuturedialTest;->StartDelItem(I)V
    invoke-static {v0, v1}, Lcom/futuredial/ui/FuturedialTest;->access$100(Lcom/futuredial/ui/FuturedialTest;I)V

    .line 97
    return-void
.end method

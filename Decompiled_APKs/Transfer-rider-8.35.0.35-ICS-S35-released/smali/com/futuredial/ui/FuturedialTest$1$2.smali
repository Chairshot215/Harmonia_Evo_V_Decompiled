.class Lcom/futuredial/ui/FuturedialTest$1$2;
.super Ljava/lang/Object;
.source "FuturedialTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/FuturedialTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/FuturedialTest$1;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/FuturedialTest$1;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/futuredial/ui/FuturedialTest$1$2;->this$1:Lcom/futuredial/ui/FuturedialTest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest$1$2;->this$1:Lcom/futuredial/ui/FuturedialTest$1;

    iget-object v0, v0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v0, v0, Lcom/futuredial/ui/FuturedialTest;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    return-void
.end method

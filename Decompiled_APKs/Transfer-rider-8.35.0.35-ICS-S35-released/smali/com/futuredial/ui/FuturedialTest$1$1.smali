.class Lcom/futuredial/ui/FuturedialTest$1$1;
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
    .line 39
    iput-object p1, p0, Lcom/futuredial/ui/FuturedialTest$1$1;->this$1:Lcom/futuredial/ui/FuturedialTest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest$1$1;->this$1:Lcom/futuredial/ui/FuturedialTest$1;

    iget-object v0, v0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1$1;->this$1:Lcom/futuredial/ui/FuturedialTest$1;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v2, "All"

    const-string v3, "Deleting. Please wait..."

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/FuturedialTest;->dialog:Landroid/app/ProgressDialog;

    .line 43
    return-void
.end method

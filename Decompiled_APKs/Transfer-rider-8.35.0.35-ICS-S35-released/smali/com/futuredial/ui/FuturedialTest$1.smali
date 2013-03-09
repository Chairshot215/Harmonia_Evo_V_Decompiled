.class Lcom/futuredial/ui/FuturedialTest$1;
.super Ljava/lang/Thread;
.source "FuturedialTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/FuturedialTest;->StartDelItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/FuturedialTest;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/futuredial/ui/FuturedialTest;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iput p2, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    #getter for: Lcom/futuredial/ui/FuturedialTest;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/futuredial/ui/FuturedialTest;->access$000(Lcom/futuredial/ui/FuturedialTest;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/futuredial/ui/FuturedialTest$1$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/FuturedialTest$1$1;-><init>(Lcom/futuredial/ui/FuturedialTest$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, pim:Lcom/futuredial/pim/CPim;
    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    if-nez v1, :cond_2

    .line 49
    new-instance v0, Lcom/futuredial/pim/G2Phonebook;

    .end local v0           #pim:Lcom/futuredial/pim/CPim;
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;-><init>(Landroid/content/Context;)V

    .line 64
    .restart local v0       #pim:Lcom/futuredial/pim/CPim;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/futuredial/pim/CPim;->DeleteAll()I

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    #getter for: Lcom/futuredial/ui/FuturedialTest;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/futuredial/ui/FuturedialTest;->access$000(Lcom/futuredial/ui/FuturedialTest;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/futuredial/ui/FuturedialTest$1$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/FuturedialTest$1$2;-><init>(Lcom/futuredial/ui/FuturedialTest$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void

    .line 50
    :cond_2
    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 52
    new-instance v0, Lcom/futuredial/pim/G2Calendar;

    .end local v0           #pim:Lcom/futuredial/pim/CPim;
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Calendar;-><init>(Landroid/content/Context;)V

    .restart local v0       #pim:Lcom/futuredial/pim/CPim;
    goto :goto_0

    .line 53
    :cond_3
    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 55
    new-instance v0, Lcom/futuredial/pim/G2Sms;

    .end local v0           #pim:Lcom/futuredial/pim/CPim;
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Sms;-><init>(Landroid/content/Context;)V

    .restart local v0       #pim:Lcom/futuredial/pim/CPim;
    goto :goto_0

    .line 56
    :cond_4
    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 58
    new-instance v0, Lcom/futuredial/pim/G2BookMark;

    .end local v0           #pim:Lcom/futuredial/pim/CPim;
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2BookMark;-><init>(Landroid/content/Context;)V

    .restart local v0       #pim:Lcom/futuredial/pim/CPim;
    goto :goto_0

    .line 60
    :cond_5
    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->val$type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 62
    :cond_6
    new-instance v0, Lcom/futuredial/pim/G2File;

    .end local v0           #pim:Lcom/futuredial/pim/CPim;
    iget-object v1, p0, Lcom/futuredial/ui/FuturedialTest$1;->this$0:Lcom/futuredial/ui/FuturedialTest;

    iget-object v1, v1, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2File;-><init>(Landroid/content/Context;)V

    .restart local v0       #pim:Lcom/futuredial/pim/CPim;
    goto :goto_0
.end method

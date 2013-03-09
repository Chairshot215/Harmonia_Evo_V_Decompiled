.class Lcom/futuredial/DmiHandler$1;
.super Ljava/lang/Thread;
.source "DmiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/DmiHandler;->ThreadDoTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/DmiHandler;


# direct methods
.method constructor <init>(Lcom/futuredial/DmiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/futuredial/DmiHandler$1;->this$0:Lcom/futuredial/DmiHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/futuredial/DmiHandler$1;->this$0:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->doTask()V

    .line 131
    return-void
.end method

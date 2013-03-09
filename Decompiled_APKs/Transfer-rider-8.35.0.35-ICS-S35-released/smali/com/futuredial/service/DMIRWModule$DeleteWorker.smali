.class Lcom/futuredial/service/DMIRWModule$DeleteWorker;
.super Ljava/lang/Thread;
.source "DMIRWModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIRWModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteWorker"
.end annotation


# instance fields
.field public phoneinfo:Lcom/futuredial/service/DMIPhone;

.field public rmModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/futuredial/service/DMIRWModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIRWModule;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->this$0:Lcom/futuredial/service/DMIRWModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->phoneinfo:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->phoneinfo:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 68
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v2, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->rmModules:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->this$0:Lcom/futuredial/service/DMIRWModule;

    iget-object v2, v2, Lcom/futuredial/service/DMIRWModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v2}, Lcom/futuredial/pim/CPim;->DeleteAll()I

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    iget-object v2, p0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->this$0:Lcom/futuredial/service/DMIRWModule;

    const/16 v3, 0x19e

    invoke-virtual {v2, v3}, Lcom/futuredial/service/DMIRWModule;->SendMsg(I)Z

    .line 76
    return-void
.end method

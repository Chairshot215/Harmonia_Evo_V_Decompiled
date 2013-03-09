.class public Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/atparser/Cse_sms_combine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/futuredial/publicobj/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/atparser/Cse_sms_combine;


# direct methods
.method public constructor <init>(Lcom/futuredial/atparser/Cse_sms_combine;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;->this$0:Lcom/futuredial/atparser/Cse_sms_combine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/futuredial/publicobj/Item;Lcom/futuredial/publicobj/Item;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v4, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;->this$0:Lcom/futuredial/atparser/Cse_sms_combine;

    #getter for: Lcom/futuredial/atparser/Cse_sms_combine;->I999002:I
    invoke-static {v5}, Lcom/futuredial/atparser/Cse_sms_combine;->access$000(Lcom/futuredial/atparser/Cse_sms_combine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 204
    .local v0, idso1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    .local v2, o1id:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 206
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/publicobj/Field;

    invoke-virtual {v4}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    :cond_0
    iget-object v4, p2, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;->this$0:Lcom/futuredial/atparser/Cse_sms_combine;

    #getter for: Lcom/futuredial/atparser/Cse_sms_combine;->I999002:I
    invoke-static {v5}, Lcom/futuredial/atparser/Cse_sms_combine;->access$000(Lcom/futuredial/atparser/Cse_sms_combine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 210
    .local v1, idso2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    .local v3, o2id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 212
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/publicobj/Field;

    invoke-virtual {v4}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 215
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    check-cast p1, Lcom/futuredial/publicobj/Item;

    .end local p1
    check-cast p2, Lcom/futuredial/publicobj/Item;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;->compare(Lcom/futuredial/publicobj/Item;Lcom/futuredial/publicobj/Item;)I

    move-result v0

    return v0
.end method

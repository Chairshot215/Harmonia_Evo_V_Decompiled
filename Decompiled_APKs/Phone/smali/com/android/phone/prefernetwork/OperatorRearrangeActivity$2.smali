.class Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;
.super Ljava/lang/Object;
.source "OperatorRearrangeActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, tempList:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 302
    .local v1, size:I
    if-ltz p2, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-gt p2, v3, :cond_1

    if-eq p1, p2, :cond_1

    .line 303
    if-le p1, p2, :cond_0

    .line 304
    move v0, p1

    .local v0, i:I
    :goto_0
    if-le v0, p2, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempList:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    check-cast v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    .line 306
    .restart local v2       #tempList:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 309
    .end local v0           #i:I
    :cond_0
    if-ge p1, p2, :cond_1

    .line 310
    move v0, p1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempList:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    check-cast v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    .line 312
    .restart local v2       #tempList:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mListadapter:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$200(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method

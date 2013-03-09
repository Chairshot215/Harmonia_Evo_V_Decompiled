.class public abstract Lcom/htc/sdm/SDMBaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SDMBaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected MyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected m_nType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/SDMBaseListAdapter;->context:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/htc/sdm/SDMBaseListAdapter;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public SetListType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 27
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    iput p1, p0, Lcom/htc/sdm/SDMBaseListAdapter;->m_nType:I

    .line 28
    return-void
.end method

.method public UpdatetList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iput-object p1, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0}, Lcom/htc/sdm/SDMBaseListAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    iget-object v0, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 37
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    iget-object v0, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 42
    .local p0, this:Lcom/htc/sdm/SDMBaseListAdapter;,"Lcom/htc/sdm/SDMBaseListAdapter<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

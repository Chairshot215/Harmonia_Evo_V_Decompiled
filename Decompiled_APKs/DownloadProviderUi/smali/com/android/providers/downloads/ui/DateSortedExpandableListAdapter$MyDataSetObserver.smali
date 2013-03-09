.class Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DateSortedExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;

    #calls: Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->buildMap()V
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->access$000(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V

    .line 73
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->access$100(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 74
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 76
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

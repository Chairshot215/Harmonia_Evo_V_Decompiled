.class Lcom/htc/app/FileScanner$ItemInfoSorter;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoSorter"
.end annotation


# instance fields
.field private mItemInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIndex:I

.field final synthetic this$0:Lcom/htc/app/FileScanner;


# direct methods
.method private constructor <init>(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/htc/app/FileScanner$ItemInfoSorter;-><init>(Lcom/htc/app/FileScanner;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/FileScanner$ItemInfoSorter;Ljava/util/LinkedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FileScanner$ItemInfoSorter;->setItemInfoList(Ljava/util/LinkedList;I)V

    return-void
.end method

.method private setItemInfoList(Ljava/util/LinkedList;I)V
    .locals 0
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, itemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    iput-object p1, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mItemInfoList:Ljava/util/LinkedList;

    .line 119
    iput p2, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mStartIndex:I

    .line 120
    return-void
.end method

.method private sortFolder()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mItemInfoList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FileScanner;->access$200(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->isStop:Z
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$000(Lcom/htc/app/FileScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mItemInfoList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/htc/app/FileScanner$ItemInfoSorter;->sortFolder()V

    .line 106
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->isStop:Z
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$000(Lcom/htc/app/FileScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mStartIndex:I

    if-ltz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mItemInfoList:Ljava/util/LinkedList;

    iget v2, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mStartIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->updateItemInfoList(Ljava/util/LinkedList;I)V

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FileScanner$ItemInfoSorter;->mItemInfoList:Ljava/util/LinkedList;

    .line 113
    return-void
.end method

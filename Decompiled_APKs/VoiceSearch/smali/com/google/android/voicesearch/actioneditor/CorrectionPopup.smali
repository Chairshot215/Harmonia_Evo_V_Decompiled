.class public Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;
.super Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.source "CorrectionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    }
.end annotation


# instance fields
.field private mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040005

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    .line 66
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    new-instance v2, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    return-object v0
.end method


# virtual methods
.method public disableList()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public refreshLayout()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->requestLayout()V

    .line 80
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->refreshLayout()V

    .line 81
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableList()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    .line 105
    return-void
.end method

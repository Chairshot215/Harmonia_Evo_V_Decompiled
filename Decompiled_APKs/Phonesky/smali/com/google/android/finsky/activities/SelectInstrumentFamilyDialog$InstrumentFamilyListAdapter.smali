.class Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectInstrumentFamilyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstrumentFamilyListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mInstrumentFamilyAddTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, instrumentFamilyAddTextList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInstrumentFamilyAddTextList:Ljava/util/List;

    .line 88
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 89
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInstrumentFamilyAddTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInstrumentFamilyAddTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 111
    check-cast v0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;

    .line 112
    .local v0, row:Lcom/google/android/finsky/layout/InstrumentFamilyRow;
    iget-object v1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;->mInstrumentFamilyAddTextList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->setInstrumentFamilyDescription(Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

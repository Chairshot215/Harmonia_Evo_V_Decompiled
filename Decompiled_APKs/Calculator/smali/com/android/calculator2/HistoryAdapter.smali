.class Lcom/android/calculator2/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# instance fields
.field private mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/calculator2/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEval:Lcom/android/calculator2/Logic;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V
    .locals 1
    .parameter "context"
    .parameter "history"
    .parameter "evaluator"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iget-object v0, p2, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    iput-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEntries:Ljava/util/Vector;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p3, p0, Lcom/android/calculator2/HistoryAdapter;->mEval:Lcom/android/calculator2/Logic;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v7, p0, Lcom/android/calculator2/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, view:Landroid/view/View;
    :goto_0
    const/high16 v7, 0x7f0a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, expr:Landroid/widget/TextView;
    const v7, 0x7f0a0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 73
    .local v5, result:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/calculator2/HistoryAdapter;->mEntries:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/HistoryEntry;

    .line 74
    .local v2, entry:Lcom/android/calculator2/HistoryEntry;
    invoke-virtual {v2}, Lcom/android/calculator2/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, base:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/calculator2/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :try_start_0
    iget-object v7, p0, Lcom/android/calculator2/HistoryAdapter;->mEval:Lcom/android/calculator2/Logic;

    invoke-virtual {v7, v0}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, res:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v4           #res:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 67
    .end local v0           #base:Ljava/lang/String;
    .end local v2           #entry:Lcom/android/calculator2/HistoryEntry;
    .end local v3           #expr:Landroid/widget/TextView;
    .end local v5           #result:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    :cond_0
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 80
    .restart local v0       #base:Ljava/lang/String;
    .restart local v2       #entry:Lcom/android/calculator2/HistoryEntry;
    .restart local v3       #expr:Landroid/widget/TextView;
    .restart local v5       #result:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Lorg/javia/arity/SyntaxException;
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

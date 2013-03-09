.class Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
.super Ljava/lang/Object;
.source "DisambigDialog.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/DisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    .line 218
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method private notifyDataSetChange()V
    .locals 3

    .prologue
    .line 296
    iget-object v2, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 297
    .local v1, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 299
    .end local v1           #observer:Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 248
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 260
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 261
    check-cast v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;

    .line 262
    .local v0, view:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
    iget-object v2, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 266
    :goto_0
    return-object v0

    .line 264
    .end local v0           #view:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;

    iget-object v2, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-direct {v0, v2, v1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .restart local v0       #view:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    .line 223
    invoke-direct {p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->notifyDataSetChange()V

    .line 224
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

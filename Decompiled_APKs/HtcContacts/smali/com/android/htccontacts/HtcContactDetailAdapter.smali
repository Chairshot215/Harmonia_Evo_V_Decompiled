.class public abstract Lcom/android/htccontacts/HtcContactDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcContactDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HtcContactDetailAdapter"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mContext:Landroid/content/Context;

    .line 213
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 214
    iput-object p2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    .line 215
    return-void
.end method

.method public static final getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;
    .locals 1
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    return-object v0
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 250
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 257
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 7
    .parameter "position"

    .prologue
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    const-wide/16 v2, -0x1

    .line 274
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    const/4 v1, 0x0

    .line 277
    .local v1, size:I
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_4

    .line 281
    :cond_0
    const-string v4, "HtcContactDetailAdapter"

    const-string v5, "getItemId: invalid status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 283
    const-string v4, "HtcContactDetailAdapter"

    const-string v5, "no sections"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    :goto_1
    return-wide v2

    .line 274
    .end local v1           #size:I
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 285
    .restart local v1       #size:I
    :cond_3
    const-string v4, "HtcContactDetailAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v4, "HtcContactDetailAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    .line 292
    .local v0, entry:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;
    if-eqz v0, :cond_1

    .line 293
    iget-wide v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 303
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 304
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/HtcContactDetailAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcContactDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/HtcContactDetailAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;)V

    .line 309
    return-object v0

    .line 306
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final setSections(Ljava/util/ArrayList;Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;TE;)I"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, entry:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;,"TE;"
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactDetailAdapter;->notifyDataSetChanged()V

    .line 235
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, numSections:I
    const/4 v2, 0x0

    .line 237
    .local v2, position:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    .line 239
    .local v0, e:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;,"TE;"
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    .end local v0           #e:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;,"TE;"
    .end local v2           #position:I
    :goto_1
    return v2

    .line 237
    .restart local v0       #e:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;,"TE;"
    .restart local v2       #position:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0           #e:Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;,"TE;"
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final setSections(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, this:Lcom/android/htccontacts/HtcContactDetailAdapter;,"Lcom/android/htccontacts/HtcContactDetailAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mSections:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactDetailAdapter;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

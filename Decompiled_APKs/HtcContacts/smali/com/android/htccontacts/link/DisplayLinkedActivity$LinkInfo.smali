.class public Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;
.super Ljava/lang/Object;
.source "DisplayLinkedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkInfo"
.end annotation


# instance fields
.field public mKeepRaws:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRemovedRaws:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    .line 165
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_1
    return-void
.end method

.method public addAll()V
    .locals 4

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    .local v1, id:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v1           #id:I
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 188
    return-void
.end method

.method public delete(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    return-void
.end method

.method public deleteAll()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    .local v1, id:I
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mRemovedRaws:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1           #id:I
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LinkInfo;->mKeepRaws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 195
    return-void
.end method

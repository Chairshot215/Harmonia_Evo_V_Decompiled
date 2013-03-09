.class final Lcom/google/android/gm/ConversationViewState$1;
.super Ljava/lang/Object;
.source "ConversationViewState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gm/ConversationViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationViewState;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 171
    new-instance v3, Lcom/google/android/gm/ConversationViewState;

    invoke-direct {v3}, Lcom/google/android/gm/ConversationViewState;-><init>()V

    .line 173
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v4

    .line 174
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 175
    iget-object v6, v3, Lcom/google/android/gm/ConversationViewState;->mMessageIds:Ljava/util/Set;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-class v1, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 179
    iget-object v1, v3, Lcom/google/android/gm/ConversationViewState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v4

    .line 182
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 183
    iget-object v6, v3, Lcom/google/android/gm/ConversationViewState;->mUnreadMessageIds:Ljava/util/Set;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 186
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p1, v0, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 189
    invoke-virtual {p1, v1, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gm/ConversationViewState;->setExpandedMessageId(JZ)V

    goto :goto_2

    .line 193
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v8}, Lcom/google/android/gm/ConversationViewState;->setExpandedMessageId(JZ)V

    goto :goto_3

    .line 196
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p1, v0, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/ConversationViewState;->showImagesForMessage(J)V

    goto :goto_4

    .line 201
    :cond_4
    new-array v0, v8, [Z

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 203
    aget-boolean v0, v0, v2

    #setter for: Lcom/google/android/gm/ConversationViewState;->mExpandedHeaders:Z
    invoke-static {v3, v0}, Lcom/google/android/gm/ConversationViewState;->access$002(Lcom/google/android/gm/ConversationViewState;Z)Z

    .line 204
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationViewState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationViewState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/ConversationViewState;
    .locals 1
    .parameter "size"

    .prologue
    .line 209
    new-array v0, p1, [Lcom/google/android/gm/ConversationViewState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationViewState$1;->newArray(I)[Lcom/google/android/gm/ConversationViewState;

    move-result-object v0

    return-object v0
.end method

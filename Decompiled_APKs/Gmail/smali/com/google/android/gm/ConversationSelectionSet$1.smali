.class final Lcom/google/android/gm/ConversationSelectionSet$1;
.super Ljava/lang/Object;
.source "ConversationSelectionSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationSelectionSet;
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
        "Lcom/google/android/gm/ConversationSelectionSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationSelectionSet;
    .locals 9
    .parameter "source"

    .prologue
    .line 295
    new-instance v6, Lcom/google/android/gm/ConversationSelectionSet;

    invoke-direct {v6}, Lcom/google/android/gm/ConversationSelectionSet;-><init>()V

    .line 296
    .local v6, result:Lcom/google/android/gm/ConversationSelectionSet;
    const-class v7, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 298
    .local v2, conversations:[Landroid/os/Parcelable;
    move-object v0, v2

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, parceled:Landroid/os/Parcelable;
    move-object v1, v5

    .line 299
    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 300
    .local v1, conversation:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/google/android/gm/ConversationSelectionSet;->put(Ljava/lang/Long;Lcom/google/android/gm/ConversationInfo;)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v1           #conversation:Lcom/google/android/gm/ConversationInfo;
    .end local v5           #parceled:Landroid/os/Parcelable;
    :cond_0
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationSelectionSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1
    .parameter "size"

    .prologue
    .line 307
    new-array v0, p1, [Lcom/google/android/gm/ConversationSelectionSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationSelectionSet$1;->newArray(I)[Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

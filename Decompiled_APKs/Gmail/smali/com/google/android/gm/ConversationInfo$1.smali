.class final Lcom/google/android/gm/ConversationInfo$1;
.super Ljava/lang/Object;
.source "ConversationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationInfo;
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
        "Lcom/google/android/gm/ConversationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationInfo;
    .locals 11
    .parameter "source"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 150
    .local v1, conversationId:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 151
    .local v3, localMessageId:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 152
    .local v5, serverMessageId:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 153
    .local v7, maxMessageId:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, labels:Ljava/lang/String;
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-static {v10}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 164
    new-array v0, p1, [Lcom/google/android/gm/ConversationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationInfo$1;->newArray(I)[Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    return-object v0
.end method

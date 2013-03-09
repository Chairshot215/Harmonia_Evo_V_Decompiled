.class public Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endIndex:I

.field public hasMoreEntriesToFetch:Z

.field public lastId:Ljava/lang/String;

.field public lastUpdatedTime:J

.field public newWindowEnd:J

.field public numEntriesFetched:J

.field public windowEnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;

    invoke-direct {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;-><init>()V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;I)V
    .locals 2
    .parameter "lastUpdatedTime"
    .parameter "numEntriesFetched"
    .parameter "moreEntriesToFetch"
    .parameter "lastId"
    .parameter "endIndex"

    .prologue
    const-wide/16 v0, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-wide p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 242
    iput-wide p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    .line 243
    iput-boolean p5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 244
    iput-object p6, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    .line 245
    iput p7, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    .line 246
    iput-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 247
    iput-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 248
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FeedData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastUpdatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " numEntriesFetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " moreEntriesToFetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " newWindowEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 257
    :cond_0
    const-string v1, "<null>"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    iget-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

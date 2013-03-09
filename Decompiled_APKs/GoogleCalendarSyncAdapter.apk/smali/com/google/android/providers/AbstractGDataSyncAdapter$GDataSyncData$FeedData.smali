.class public Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
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
            "Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;",
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
    .line 169
    new-instance v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;

    invoke-direct {v0}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;-><init>()V

    sput-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 133
    iput-wide p3, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    .line 134
    iput-boolean p5, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 135
    iput-object p6, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    .line 136
    iput p7, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    .line 137
    iput-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 138
    iput-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FeedData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastUpdatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " numEntriesFetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " moreEntriesToFetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " newWindowEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    const-string v1, "<null>"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-boolean v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

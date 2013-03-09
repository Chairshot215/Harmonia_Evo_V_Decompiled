.class Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;
.super Landroid/database/MergeCursor;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/util/EmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMergeCursor"
.end annotation


# instance fields
.field private mContactCount:I

.field private mContactSeparatorPosition:I

.field private mHistoryCount:I

.field private mHistorySeparatorPosition:I

.field private mServerCount:I

.field private mServerSeparatorPosition:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursors"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 919
    invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 921
    iput v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistorySeparatorPosition:I

    .line 922
    iput v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactSeparatorPosition:I

    .line 923
    iput v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerSeparatorPosition:I

    .line 924
    iput v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistoryCount:I

    .line 925
    iput v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactCount:I

    .line 926
    iput v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerCount:I

    .line 928
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 932
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/MergeCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContactCount()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactCount:I

    return v0
.end method

.method getContactSeparatorPosition()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactSeparatorPosition:I

    return v0
.end method

.method getHistoryCount()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistoryCount:I

    return v0
.end method

.method getHistorySeparatorPosition()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistorySeparatorPosition:I

    return v0
.end method

.method getServerCount()I
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerCount:I

    return v0
.end method

.method getServerSeparatorPosition()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerSeparatorPosition:I

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/MergeCursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setContactCount(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 984
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactCount:I

    .line 985
    return-void
.end method

.method setContactSeparatorPosition(I)V
    .locals 0
    .parameter "newPos"

    .prologue
    .line 952
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mContactSeparatorPosition:I

    .line 953
    return-void
.end method

.method setHistoryCount(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 980
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistoryCount:I

    .line 981
    return-void
.end method

.method setHistorySeparatorPosition(I)V
    .locals 0
    .parameter "newPos"

    .prologue
    .line 944
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mHistorySeparatorPosition:I

    .line 945
    return-void
.end method

.method setServerCount(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 988
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerCount:I

    .line 989
    return-void
.end method

.method setServerSeparatorPosition(I)V
    .locals 0
    .parameter "newPos"

    .prologue
    .line 960
    iput p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->mServerSeparatorPosition:I

    .line 961
    return-void
.end method

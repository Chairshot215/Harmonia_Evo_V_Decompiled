.class Lcom/google/android/talk/EmailAddressAdapter$1;
.super Landroid/database/AbstractCursor;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/EmailAddressAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/EmailAddressAdapter;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$columnCount:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/EmailAddressAdapter;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->this$0:Lcom/google/android/talk/EmailAddressAdapter;

    iput p2, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$columnCount:I

    iput-object p3, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method private checkColumn(I)V
    .locals 3
    .parameter "column"

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$columnCount:I

    if-lt p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; cursor has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$columnCount:I

    .line 123
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 124
    .local v1, retval:[Ljava/lang/String;
    const-string v2, "_id"

    aput-object v2, v1, v0

    .line 125
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$columnCount:I

    if-ne p1, v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/talk/EmailAddressAdapter$1;->getPosition()I

    move-result v0

    int-to-long v0, v0

    .line 168
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/talk/EmailAddressAdapter$1;->checkColumn(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v0

    .line 131
    .local v0, didMove:Z
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/android/talk/EmailAddressAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    :cond_0
    return v0
.end method

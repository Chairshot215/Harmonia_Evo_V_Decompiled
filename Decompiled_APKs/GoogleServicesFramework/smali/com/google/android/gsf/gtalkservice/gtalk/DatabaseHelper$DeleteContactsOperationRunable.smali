.class Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteContactsOperationRunable"
.end annotation


# instance fields
.field private mAccountId:J

.field private mContentUri:Landroid/net/Uri;

.field private mMaxSelectionArgs:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"
    .parameter "accountId"
    .parameter "maxArgs"

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mResolver:Landroid/content/ContentResolver;

    .line 338
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mContentUri:Landroid/net/Uri;

    .line 339
    iput-wide p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mAccountId:J

    .line 340
    iput p5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mMaxSelectionArgs:I

    .line 341
    return-void
.end method


# virtual methods
.method public getMaxSelectionArgs()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mMaxSelectionArgs:I

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v4, "account"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v4, "=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mAccountId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    const-string v4, "\' AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteContactsOperationRunable.run: selection is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->access$000(Ljava/lang/String;)V

    .line 368
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelectionArgs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  selectionArg["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelectionArgs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->access$000(Ljava/lang/String;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2           #j:I
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    return-void

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "GTalkService"

    const-string v5, "DeleteContactsOperationRunable.run caught "

    invoke-static {v4, v5, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelection:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionArgs"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;->mSelectionArgs:[Ljava/lang/String;

    .line 353
    return-void
.end method

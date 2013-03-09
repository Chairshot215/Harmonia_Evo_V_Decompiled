.class public Lcom/google/android/gm/ComposeAreaController;
.super Ljava/lang/Object;
.source "ComposeAreaController.java"

# interfaces
.implements Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;
.implements Lcom/google/android/gm/QuotedTextView$RespondInlineListener;
.implements Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;,
        Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    }
.end annotation


# static fields
.field static final ALL_EXTRAS:[Ljava/lang/String;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAttachmentsChanged:Z

.field private final mController:Lcom/google/android/gm/ComposeController;

.field private final mParent:Landroid/app/Activity;

.field private mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

.field private mRecipientErrorDialog:Landroid/app/AlertDialog;

.field private mRestoredFromInstanceState:Z

.field private mRootView:Lcom/google/android/gm/ComposeArea;

.field private mShowCcBcc:Ljava/lang/Boolean;

.field private mValidator:Lcom/android/common/Rfc822Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "to"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bcc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/ComposeAreaController;->ALL_EXTRAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;Lcom/google/android/gm/persistence/Persistence;)V
    .locals 2
    .parameter "parent"
    .parameter "controller"
    .parameter "prefs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 125
    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    .line 127
    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 129
    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRestoredFromInstanceState:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    .line 143
    iput-object p2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ComposeAreaController;)Lcom/google/android/gm/ComposeArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/ComposeAreaController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addAddressToList(Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 4
    .parameter "address"
    .parameter "list"

    .prologue
    .line 979
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 987
    :cond_0
    return-void

    .line 982
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 984
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addAddressesToList(Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 6
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/util/Rfc822Token;

    .line 1020
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1021
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, address:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    return-void
.end method

.method private addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    .locals 11
    .parameter "uri"
    .parameter "contentType"
    .parameter "doSave"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
        }
    .end annotation

    .prologue
    .line 692
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    const-string p2, ""

    .line 695
    :cond_0
    new-instance v6, Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {v6}, Lcom/google/android/gm/provider/Gmail$Attachment;-><init>()V

    .line 697
    .local v6, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 698
    iput-object p2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    .line 699
    const/4 v1, 0x0

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    .line 700
    iput-object p2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    .line 701
    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 702
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->localFileExtras(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 704
    const/4 v10, 0x0

    .line 706
    .local v10, metadataCursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 709
    if-eqz v10, :cond_2

    .line 711
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 713
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 759
    :cond_2
    :goto_0
    iget-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 760
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_max_attachment_size_bytes"

    const/high16 v3, 0x190

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 777
    .local v9, maxSize:I
    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-le v1, v9, :cond_a

    .line 778
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 779
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Attachment too large to attach"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;)V

    throw v1

    .line 716
    .end local v9           #maxSize:I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 719
    :catch_0
    move-exception v8

    .line 728
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "_display_name"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gm/ComposeAreaController;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 730
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 731
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 734
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_6
    :try_start_5
    const-string v1, "_size"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gm/ComposeAreaController;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 741
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 742
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 748
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 734
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 745
    :cond_8
    :try_start_6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 748
    :catchall_2
    move-exception v1

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 750
    .end local v8           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 754
    .local v7, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v2, 0x7f0c0105

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 756
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Security Exception from attachment uri"

    invoke-direct {v1, p0, v2, v7}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 780
    .end local v7           #e:Ljava/lang/SecurityException;
    .restart local v9       #maxSize:I
    :cond_a
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/AttachmentsView;->getTotalAttachmentsSize()I

    move-result v1

    iget v2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    add-int/2addr v1, v2

    if-le v1, v9, :cond_b

    .line 782
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 783
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Attachment too large to attach"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_b
    invoke-virtual {p0, v6}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 786
    if-eqz p3, :cond_c

    .line 787
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/gm/ComposeController;->doSave(ZZ)V

    .line 791
    :cond_c
    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    return v1
.end method

.method private addBccAddresses(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 969
    return-void
.end method

.method private addCcAddresses(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 965
    return-void
.end method

.method private addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, toAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->addCcAddressesToList(Ljava/util/List;Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 961
    return-void
.end method

.method private static addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1237
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 1239
    .local v1, email:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/gm/utils/CustomFromUtils;->isCustomFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1240
    .local v3, isCustomFrom:Z
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    .local v5, recipientAddress:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    .line 1242
    const-string v6, "\"\""

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #isCustomFrom:Z
    .end local v5           #recipientAddress:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addToAddresses(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 956
    return-void
.end method

.method private cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "string"
    .parameter "removeEmptyDoubleQuotes"

    .prologue
    .line 461
    if-eqz p2, :cond_0

    const-string v0, "\"\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p1, list:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1009
    .local v0, hash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/util/Rfc822Token;

    .line 1010
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1011
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v1           #i:I
    .end local v3           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v0
.end method

.method private focusSubject()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusSubject()V

    .line 248
    return-void
.end method

.method private getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "contentResolver"
    .parameter "uri"
    .parameter "columnName"

    .prologue
    .line 854
    const/4 v6, 0x0

    .line 856
    .local v6, result:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 860
    :goto_0
    return-object v6

    .line 857
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAttachments(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 1149
    .local v0, a:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gm/AttachmentsView;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto :goto_0

    .line 1151
    .end local v0           #a:Lcom/google/android/gm/provider/Gmail$Attachment;
    :cond_0
    return-void
.end method

.method private initBodyFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;IZ)V
    .locals 11
    .parameter "refCursor"
    .parameter "action"
    .parameter "forward"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 471
    invoke-static {v9, v10}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 472
    .local v2, dateFormat:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getDateReceivedMs()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 473
    .local v1, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v3, quotedText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_2

    .line 476
    :cond_0
    const-string v6, "<div class=\"gmail_quote\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    iget-object v6, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v7, 0x7f0c0071

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v6, "<br type=\'attribution\'>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    const-string v6, "<blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    const-string v6, "</blockquote>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v6, "</div>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p3, :cond_4

    :goto_1
    invoke-virtual {p0, v6, v4}, Lcom/google/android/gm/ComposeAreaController;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 504
    return-void

    .line 485
    :cond_2
    if-ne p2, v9, :cond_1

    .line 486
    const-string v6, "<div class=\"gmail_quote\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    iget-object v6, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v7, 0x7f0c0072

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, ", "

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, ccAddresses:[Ljava/lang/String;
    array-length v6, v0

    if-lez v6, :cond_3

    .line 495
    iget-object v6, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v7, 0x7f0c0073

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, ", "

    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_3
    const-string v6, "<br type=\'attribution\'>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v6, "</div>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .end local v0           #ccAddresses:[Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 503
    goto/16 :goto_1
.end method

.method private initRecipientsFromRefMessageCursor(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 1
    .parameter "account"
    .parameter "refCursor"
    .parameter "action"

    .prologue
    .line 1210
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeAreaController;->initReplyRecipients(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    goto :goto_0
.end method

.method private initReplyRecipients(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 8
    .parameter "account"
    .parameter "refCursor"
    .parameter "action"

    .prologue
    .line 1219
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1220
    .local v2, accountEmail:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getReplyToAddress()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ComposeAreaController;->initToRecipients(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    .line 1222
    .local v7, toAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v7}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 1228
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1229
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 1230
    .local v6, ccAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/google/android/gm/ComposeAreaController;->addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/google/android/gm/ComposeAreaController;->addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1234
    .end local v6           #ccAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private showAttachmentTooBigToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 842
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v2, 0x7f0c0105

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 843
    .local v0, t:Landroid/widget/Toast;
    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 844
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 846
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 847
    return-void
.end method

.method private updateAttachments(ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    if-eqz v0, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1160
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1161
    invoke-direct {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->initAttachments(Ljava/util/List;)V

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1165
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method


# virtual methods
.method addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 3
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/ComposeAreaController;->addAddressToList(Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;)V

    goto :goto_0

    .line 976
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 1
    .parameter "attachment"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 941
    return-void
.end method

.method public addAttachmentAndUpdateView(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 820
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 821
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 822
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 823
    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v3}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 824
    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, contentType:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0           #contentType:Ljava/lang/String;
    :goto_1
    return-void

    .line 820
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 827
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v3, "Gmail"

    const-string v4, "Error adding attachment"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 832
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    goto :goto_1
.end method

.method protected addCcAddressesToList(Ljava/util/List;Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 7
    .parameter
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, compareToList:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-direct {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 995
    .local v1, compareTo:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 996
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 997
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, address:Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 996
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_2
    return-void
.end method

.method public addChangeListeners()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/AttachmentsView;->setAttachmentChangesListener(Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getSubjectText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;-><init>(Lcom/google/android/gm/ComposeAreaController;Landroid/widget/MultiAutoCompleteTextView;Lcom/google/android/gm/ComposeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;-><init>(Lcom/google/android/gm/ComposeAreaController;Landroid/widget/MultiAutoCompleteTextView;Lcom/google/android/gm/ComposeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gm/ComposeAreaController$RecipientsTextWatcher;-><init>(Lcom/google/android/gm/ComposeAreaController;Landroid/widget/MultiAutoCompleteTextView;Lcom/google/android/gm/ComposeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    return-void
.end method

.method public appendToBody(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->appendToBody(Ljava/lang/CharSequence;Z)V

    .line 342
    return-void
.end method

.method public areAttachmentsSynced()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->areAttachmentsSynced()Z

    move-result v0

    return v0
.end method

.method public checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1253
    .local p2, wrongEmailsOut:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1254
    .local v1, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v4, v1}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lcom/google/android/gm/Utils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1255
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1258
    .end local v1           #email:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public clearRecipients()V
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->clearRecipients()V

    .line 1349
    return-void
.end method

.method public currentlyShowingBcc()Z
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0f002e

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentlyShowingCc()Z
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0f002b

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 872
    const-string v1, "+"

    const-string v2, "%2B"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, replacePlus:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deleteAllAttachments()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->deleteAllAttachments()V

    .line 1331
    return-void
.end method

.method public dismissAllDialogs()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1144
    :cond_0
    return-void
.end method

.method public focusBody()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    .line 373
    return-void
.end method

.method public getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;
    .locals 5
    .parameter "list"

    .prologue
    .line 1294
    if-nez p1, :cond_1

    .line 1295
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 1303
    :cond_0
    return-object v2

    .line 1297
    :cond_1
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1298
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    array-length v0, v3

    .line 1299
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 1300
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1301
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBccAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText(Z)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getBodyText(Z)Landroid/text/Editable;
    .locals 2
    .parameter "clearComposingText"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v0

    .line 359
    .local v0, bodyText:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCcAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCorrectedSubject(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "action"
    .parameter "subject"
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, correctedSubject:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 219
    const-string v1, ""

    .line 227
    .local v1, prefix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    move-object v0, p2

    .line 233
    :goto_1
    return-object v0

    .line 220
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    if-ne p1, v4, :cond_1

    .line 221
    const v2, 0x7f0c0070

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 223
    .end local v1           #prefix:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c006f

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 230
    :cond_2
    const v2, 0x7f0c0156

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 7
    .parameter "uri"
    .parameter "contentResolver"

    .prologue
    const/4 v6, 0x0

    .line 796
    const/4 v2, -0x1

    .line 797
    .local v2, size:I
    const/4 v1, 0x0

    .line 799
    .local v1, file:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 800
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    long-to-int v2, v3

    .line 805
    if-eqz v1, :cond_0

    .line 806
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    :cond_0
    :goto_0
    return v2

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Gmail"

    const-string v4, "Error closing file opened to obtain size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 801
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Gmail"

    const-string v4, "Error opening file to obtain size."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    if-eqz v1, :cond_0

    .line 806
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 808
    :catch_2
    move-exception v0

    .line 809
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Gmail"

    const-string v4, "Error closing file opened to obtain size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 804
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 805
    if-eqz v1, :cond_1

    .line 806
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 810
    :cond_1
    :goto_1
    throw v3

    .line 808
    :catch_3
    move-exception v0

    .line 809
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Gmail"

    const-string v5, "Error closing file opened to obtain size."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideOrShowBcc(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->hideOrShowBcc(Z)V

    .line 1076
    return-void
.end method

.method public hideOrShowCcBcc(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1065
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    .line 1066
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->hideOrShowCcBcc(Z)V

    .line 1067
    return-void
.end method

.method public initFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 6
    .parameter "draftCursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, body:Ljava/lang/String;
    const-string v4, "<div class=\"gmail_quote\">"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, quotedTextIndex:I
    if-ltz v1, :cond_2

    .line 393
    invoke-virtual {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 394
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getForward()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {p0, v4, v2}, Lcom/google/android/gm/ComposeAreaController;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 405
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRestoredFromInstanceState:Z

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->initAttachments(Ljava/util/List;)V

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 411
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 414
    return-void

    :cond_1
    move v2, v3

    .line 395
    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 400
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public initFromExtras(Landroid/content/Intent;)V
    .locals 28
    .parameter "intent"

    .prologue
    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 548
    .local v7, dataUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 549
    const-string v25, "mailto"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 550
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->initFromMailTo(Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_0
    const-string v25, "android.intent.extra.EMAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 563
    .local v11, extraStrings:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 564
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 566
    :cond_1
    const-string v25, "android.intent.extra.CC"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 567
    if-eqz v11, :cond_2

    .line 568
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 570
    :cond_2
    const-string v25, "android.intent.extra.BCC"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 571
    if-eqz v11, :cond_3

    .line 572
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 575
    :cond_3
    const-string v25, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 576
    .local v10, extraString:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    .line 580
    :cond_4
    sget-object v5, Lcom/google/android/gm/ComposeAreaController;->ALL_EXTRAS:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_b

    aget-object v9, v5, v13

    .line 581
    .local v9, extra:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 582
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 583
    .local v24, value:Ljava/lang/String;
    const-string v25, "to"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 584
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 580
    .end local v24           #value:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 552
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #extra:Ljava/lang/String;
    .end local v10           #extraString:Ljava/lang/String;
    .end local v11           #extraStrings:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_6
    const-string v25, "gmailfrom"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 553
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 554
    .local v18, toText:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/gm/ComposeArea;->setToList(Ljava/lang/String;)V

    .line 556
    const-string v25, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 585
    .end local v18           #toText:Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #extra:Ljava/lang/String;
    .restart local v10       #extraString:Ljava/lang/String;
    .restart local v11       #extraStrings:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v24       #value:Ljava/lang/String;
    :cond_7
    const-string v25, "cc"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 586
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    goto :goto_2

    .line 587
    :cond_8
    const-string v25, "bcc"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 588
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    goto :goto_2

    .line 589
    :cond_9
    const-string v25, "subject"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    goto :goto_2

    .line 591
    :cond_a
    const-string v25, "body"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 592
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 597
    .end local v9           #extra:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 598
    .local v12, extras:Landroid/os/Bundle;
    if-eqz v12, :cond_14

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, action:Ljava/lang/String;
    const-string v25, "android.intent.extra.TEXT"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 601
    .local v17, text:Ljava/lang/CharSequence;
    if-eqz v17, :cond_c

    .line 602
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 605
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "gmail_max_attachment_size_bytes"

    const/high16 v27, 0x190

    invoke-static/range {v25 .. v27}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 607
    .local v15, maxSize:I
    const/16 v19, 0x0

    .line 610
    .local v19, totalSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_14

    .line 611
    const-string v25, "attachments"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 612
    const-string v25, "attachments"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v22, v25

    check-cast v22, [Ljava/lang/String;

    .line 613
    .local v22, uris:[Ljava/lang/String;
    move-object/from16 v5, v22

    array-length v14, v5

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_e

    aget-object v21, v5, v13

    .line 614
    .local v21, uriString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 615
    .local v20, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, contentType:Ljava/lang/String;
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 626
    .local v16, size:I
    add-int v19, v19, v16

    .line 627
    move/from16 v0, v19

    if-le v0, v15, :cond_d

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    .line 678
    .end local v4           #action:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #maxSize:I
    .end local v16           #size:I
    .end local v17           #text:Ljava/lang/CharSequence;
    .end local v19           #totalSize:I
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uriString:Ljava/lang/String;
    .end local v22           #uris:[Ljava/lang/String;
    :goto_4
    return-void

    .line 619
    .restart local v4       #action:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v15       #maxSize:I
    .restart local v17       #text:Ljava/lang/CharSequence;
    .restart local v19       #totalSize:I
    .restart local v20       #uri:Landroid/net/Uri;
    .restart local v21       #uriString:Ljava/lang/String;
    .restart local v22       #uris:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 622
    .local v8, e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v8, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 613
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    .restart local v16       #size:I
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 633
    .end local v6           #contentType:Ljava/lang/String;
    .end local v16           #size:I
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uriString:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 635
    .end local v22           #uris:[Ljava/lang/String;
    :cond_f
    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    const-string v25, "com.google.android.gm.action.AUTO_SEND"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    :cond_10
    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 637
    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 638
    .restart local v20       #uri:Landroid/net/Uri;
    if-eqz v20, :cond_11

    .line 640
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_1
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    .end local v20           #uri:Landroid/net/Uri;
    :cond_11
    const-string v25, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 653
    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 654
    .local v23, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Parcelable;

    .line 657
    .local v20, uri:Landroid/os/Parcelable;
    :try_start_2
    check-cast v20, Landroid/net/Uri;

    .end local v20           #uri:Landroid/os/Parcelable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_2
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 665
    .restart local v16       #size:I
    add-int v19, v19, v16

    .line 666
    move/from16 v0, v19

    if-le v0, v15, :cond_12

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 641
    .end local v16           #size:I
    .end local v23           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .local v13, i$:I
    .local v20, uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 644
    .restart local v8       #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v8, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 658
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    .end local v20           #uri:Landroid/net/Uri;
    .local v13, i$:Ljava/util/Iterator;
    .restart local v23       #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_2
    move-exception v8

    .line 661
    .restart local v8       #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v8, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 672
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 677
    .end local v4           #action:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #maxSize:I
    .end local v17           #text:Ljava/lang/CharSequence;
    .end local v19           #totalSize:I
    .end local v23           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    goto/16 :goto_4
.end method

.method public initFromMailTo(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 884
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 885
    const-string v2, "mailto"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 889
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 890
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    :goto_0
    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_1
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 906
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 907
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 909
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 910
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 912
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 913
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 915
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    :cond_0
    :goto_2
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 923
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 925
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 932
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 933
    return-void

    .line 892
    :cond_2
    :try_start_3
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    const-string v2, "Gmail"

    invoke-static {v2, v8}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 897
    const-string v2, "Gmail"

    const-string v3, "%s while decoding \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 899
    :cond_3
    const-string v2, "Gmail"

    const-string v3, "Exception  while decoding mailto address"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 916
    :catch_1
    move-exception v0

    .line 917
    const-string v3, "Gmail"

    const-string v4, "%s while decoding subject \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 927
    :catch_2
    move-exception v0

    .line 928
    const-string v2, "Gmail"

    const-string v3, "%s while decoding body \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method public initFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;IZLandroid/content/Intent;)V
    .locals 1
    .parameter "refCursor"
    .parameter "recipientAddress"
    .parameter "action"
    .parameter "forward"
    .parameter "intent"

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 519
    if-eqz p5, :cond_0

    const-string v0, "toRecips"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->initRecipientsFromRefMessageCursor(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 522
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 523
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/ComposeAreaController;->initBodyFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;IZ)V

    .line 524
    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    if-eqz v0, :cond_3

    .line 525
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gm/ComposeAreaController;->updateAttachments(ILjava/util/List;)V

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 531
    return-void

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->removeAllAttachments()V

    goto :goto_0
.end method

.method protected initToRecipients(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .parameter "account"
    .parameter "accountEmail"
    .parameter "senderAddress"
    .parameter "replyToAddresses"
    .parameter "inToAddresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1178
    .local v1, toAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p3}, Lcom/google/android/gm/utils/CustomFromUtils;->isCustomFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1179
    .local v0, isCustomFrom:Z
    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 1182
    :cond_0
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1203
    :goto_0
    return-object v1

    .line 1183
    :cond_1
    if-eqz p4, :cond_2

    array-length v2, p4

    if-eqz v2, :cond_2

    .line 1184
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1188
    :cond_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1194
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1200
    :cond_3
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public isBlank()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->isBlank()Z

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->isBodyEmpty()Z

    move-result v0

    return v0
.end method

.method public isSubjectEmpty()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachmentAdded()V
    .locals 0

    .prologue
    .line 1315
    return-void
.end method

.method public onAttachmentDeleted()V
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 1309
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 1310
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0}, Lcom/google/android/gm/QuotedTextView;->onDestroy()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    .line 185
    :cond_0
    return-void
.end method

.method public onRespondInline(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->appendToBody(Ljava/lang/CharSequence;Z)V

    .line 173
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 289
    iput-boolean v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRestoredFromInstanceState:Z

    .line 290
    const-string v0, "showCcBcc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setShowCcBcc(Ljava/lang/Boolean;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->setCcBccState(Z)V

    .line 292
    const-string v0, "showQuotedText"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "inBundle"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 281
    return-object p1
.end method

.method public onShowHideQuotedText(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeController;->onUiChanged()V

    .line 178
    return-void
.end method

.method public renderComposeArea(Lcom/google/android/gm/ComposeArea;Ljava/lang/String;)V
    .locals 4
    .parameter "root"
    .parameter "account"

    .prologue
    .line 147
    iput-object p2, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/android/common/Rfc822Validator;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 149
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->renderView()V

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getQuotedTextView()Lcom/google/android/gm/QuotedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    .line 152
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/QuotedTextView;->setShowHideListener(Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/QuotedTextView;->setRespondInlineListener(Lcom/google/android/gm/QuotedTextView$RespondInlineListener;)V

    .line 154
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToListLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusToList()V

    .line 1110
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->isSubjectEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->focusSubject()V

    goto :goto_0

    .line 1108
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->focusBody()V

    goto :goto_0
.end method

.method public setBody(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    .line 330
    return-void
.end method

.method public setQuotedSectionVisibility(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->setQuotedSectionVisibility(Z)V

    .line 260
    return-void
.end method

.method public setQuotedText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "allow"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 269
    return-void
.end method

.method public setShowCcBcc(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    .line 1093
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 3
    .parameter "refCursor"
    .parameter "action"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {p0, p2, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->getCorrectedSubject(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->setSubject(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->setSubject(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public showRecipientErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1123
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013e

    new-instance v2, Lcom/google/android/gm/ComposeAreaController$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ComposeAreaController$1;-><init>(Lcom/google/android/gm/ComposeAreaController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    .line 1138
    return-void
.end method

.method protected tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1031
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v3, tokenized:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1034
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1036
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public updateFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 2
    .parameter "draftCursor"
    .parameter "refMessageCursor"
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 433
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/google/android/gm/ComposeAreaController;->updateAttachments(ILjava/util/List;)V

    .line 435
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_1

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/gm/ComposeAreaController;->initReplyRecipients(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 441
    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    :goto_0
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gm/ComposeAreaController;->initBodyFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;IZ)V

    .line 442
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 450
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 451
    return-void

    .line 441
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 446
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 447
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    goto :goto_1
.end method

.method public updateHideOrShowCcBcc()V
    .locals 3

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ComposeArea;->updateHideOrShowCcBcc(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gm/ComposeController;->updateHideOrShowCcBcc(Z)V

    .line 1085
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateReplyFromAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->updateReplyFromAccount(Ljava/lang/String;)V

    .line 1324
    :cond_0
    return-void
.end method

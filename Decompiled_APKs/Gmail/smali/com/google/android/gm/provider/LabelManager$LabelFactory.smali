.class Lcom/google/android/gm/provider/LabelManager$LabelFactory;
.super Ljava/lang/Object;
.source "LabelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/LabelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LabelFactory"
.end annotation


# instance fields
.field final mAccount:Ljava/lang/String;

.field final mCanonicalNameIndex:I

.field final mColorIndex:I

.field final mContext:Landroid/content/Context;

.field final mHiddenLabelIndex:I

.field final mIdIndex:I

.field final mLabelCountBehaviorIndex:I

.field final mLabelSyncPolicyIndex:I

.field final mLastTouchedIndex:I

.field final mNameIndex:I

.field final mNumConversationsIndex:I

.field final mNumUnreadConversationsIndex:I

.field final mSystemLabelNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mContext:Landroid/content/Context;

    .line 422
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mAccount:Ljava/lang/String;

    .line 424
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mIdIndex:I

    .line 425
    const-string v0, "canonicalName"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mCanonicalNameIndex:I

    .line 426
    const-string v0, "name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNameIndex:I

    .line 427
    const-string v0, "numConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumConversationsIndex:I

    .line 429
    const-string v0, "numUnreadConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumUnreadConversationsIndex:I

    .line 431
    const-string v0, "color"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mColorIndex:I

    .line 432
    const-string v0, "hidden"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mHiddenLabelIndex:I

    .line 433
    const-string v0, "labelCountDisplayBehavior"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelCountBehaviorIndex:I

    .line 435
    const-string v0, "labelSyncPolicy"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelSyncPolicyIndex:I

    .line 437
    const-string v0, "lastTouched"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLastTouchedIndex:I

    .line 439
    invoke-static {p1}, Lcom/google/android/gm/provider/Label;->getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mSystemLabelNameMap:Ljava/util/Map;

    .line 440
    return-void
.end method


# virtual methods
.method newLabel(Landroid/database/Cursor;)Lcom/google/android/gm/provider/Label;
    .locals 17
    .parameter "cursor"

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz p1, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 452
    .local v4, labelId:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mCanonicalNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, canonicalName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumConversationsIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 455
    .local v9, numConversations:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumUnreadConversationsIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 456
    .local v10, numUnreadConversations:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mHiddenLabelIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    .line 457
    .local v11, isHiddenLabel:Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mColorIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, color:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelCountBehaviorIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 459
    .local v12, labelCountBehavior:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelSyncPolicyIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 460
    .local v13, labelSyncPolicy:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLastTouchedIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 462
    .local v14, lastTouched:J
    new-instance v1, Lcom/google/android/gm/provider/Label;

    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mSystemLabelNameMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIJLjava/util/Map;)V

    .line 466
    .end local v4           #labelId:J
    .end local v6           #canonicalName:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #color:Ljava/lang/String;
    .end local v9           #numConversations:I
    .end local v10           #numUnreadConversations:I
    .end local v11           #isHiddenLabel:Z
    .end local v12           #labelCountBehavior:I
    .end local v13           #labelSyncPolicy:I
    .end local v14           #lastTouched:J
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    return-object v1

    .line 456
    .restart local v4       #labelId:J
    .restart local v6       #canonicalName:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #numConversations:I
    .restart local v10       #numUnreadConversations:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

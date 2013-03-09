.class public Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
.super Ljava/lang/Object;
.source "ConversationGroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ConversationGroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupChildPositionPair"
.end annotation


# instance fields
.field childPosition:I

.field groupPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "assignedGroupPosition"
    .parameter "assignedChildPosition"

    .prologue
    .line 365
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    .line 367
    iput p2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    .line 368
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 379
    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    move-object v0, p1

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    iget v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    check-cast p1, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .end local p1
    iget v1, p1, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    if-ne v0, v1, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 372
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(groupPosition, childPosition)=(%2d, %2d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, debug:Ljava/lang/String;
    return-object v0
.end method

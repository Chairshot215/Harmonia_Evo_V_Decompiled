.class public final Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
.super Lcom/google/android/talk/GmailProviderWrapper$MailCursor;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBodyEmbedsExternalResourcesIndex:I

.field private mBodyIndex:I

.field private mCcIndex:I

.field private mConversationIdIndex:I

.field private mDateReceivedMsIndex:I

.field private mFromIndex:I

.field private mIdIndex:I

.field mInReplyToLocalMessageId:J

.field private mLabelIdsIndex:I

.field mPreserveAttachments:Z

.field private mSnippetIndex:I

.field private mSubjectIndex:I

.field private mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 628
    const-class v0, Lcom/google/android/talk/GmailProviderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 649
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 650
    if-nez p2, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null cursor passed to MessageCursor()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mIdIndex:I

    .line 656
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "conversation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mConversationIdIndex:I

    .line 658
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mSubjectIndex:I

    .line 659
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mSnippetIndex:I

    .line 660
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mFromIndex:I

    .line 661
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "toAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mToIndex:I

    .line 662
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "ccAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCcIndex:I

    .line 663
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "dateReceivedMs"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mDateReceivedMsIndex:I

    .line 665
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mBodyIndex:I

    .line 666
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "bodyEmbedsExternalResources"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    .line 668
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "labelIds"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mLabelIdsIndex:I

    .line 670
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mInReplyToLocalMessageId:J

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mPreserveAttachments:Z

    .line 672
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/talk/GmailProviderWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddresses(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "index"

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getUpdateValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 754
    .local v1, updated:Landroid/content/ContentValues;
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getUpdateValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 760
    .local v0, addresses:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/android/talk/GmailProviderWrapper;->access$300()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 757
    .end local v0           #addresses:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #addresses:Ljava/lang/String;
    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mBodyIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyEmbedsExternalResources()Z
    .locals 2

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->checkCursor()V

    .line 800
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCcAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    const-string v0, "ccAddresses"

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCcIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getAddresses(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateReceivedMs()J
    .locals 2

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->checkCursor()V

    .line 781
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mDateReceivedMsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mFromIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->checkCursor()V

    .line 705
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawLabelIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mLabelIdsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    .locals 3

    .prologue
    .line 682
    iget-object v2, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 683
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, stringStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v2

    return-object v2
.end method

.method public getToAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 768
    const-string v0, "toAddresses"

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mToIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getAddresses(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onChange(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-super {p0, p1}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->onChange(Z)V

    return-void
.end method

.method public retry()V
    .locals 5

    .prologue
    .line 689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 690
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v3, p0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 692
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 694
    :cond_0
    return-void
.end method

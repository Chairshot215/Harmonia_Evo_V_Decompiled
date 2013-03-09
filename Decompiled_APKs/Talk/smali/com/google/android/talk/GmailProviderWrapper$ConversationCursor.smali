.class public final Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
.super Lcom/google/android/talk/GmailProviderWrapper$MailCursor;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mConversationIdIndex:I

.field private mDateIndex:I

.field private mPersonalLevelIndex:I

.field private mSnippetIndex:I

.field private mSubjectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 817
    const-class v0, Lcom/google/android/talk/GmailProviderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->$assertionsDisabled:Z

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
    .line 826
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 827
    if-nez p2, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null cursor passed to ConversationCursor()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mConversationIdIndex:I

    .line 833
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mSubjectIndex:I

    .line 834
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mSnippetIndex:I

    .line 835
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mDateIndex:I

    .line 836
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mPersonalLevelIndex:I

    .line 838
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/talk/GmailProviderWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public becomeActiveNetworkCursor()V
    .locals 5

    .prologue
    .line 862
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 863
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "activate"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v3, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 865
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 867
    :cond_0
    return-void
.end method

.method public bridge synthetic getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    invoke-super {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mConversationIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 817
    invoke-super {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateMs()J
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mDateIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonalLevel()Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    .locals 3

    .prologue
    .line 903
    iget-object v1, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mPersonalLevelIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 904
    .local v0, personalLevelInt:I
    #calls: Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->fromInt(I)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    invoke-static {v0}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->access$400(I)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    move-result-object v1

    return-object v1
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    .locals 3

    .prologue
    .line 841
    iget-object v2, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 842
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, stringStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v2

    return-object v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mSubjectIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onChange(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 817
    invoke-super {p0, p1}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->onChange(Z)V

    return-void
.end method

.method public retry()V
    .locals 5

    .prologue
    .line 848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 849
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v3, p0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 851
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 853
    :cond_0
    return-void
.end method

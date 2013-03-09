.class Lcom/google/android/talk/util/ChatList$Info;
.super Ljava/lang/Object;
.source "ChatList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/ChatList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private mAccountId:J

.field private mClientType:I

.field private mId:J

.field private mIsGroupChat:Z

.field private mNickname:Ljava/lang/String;

.field private mType:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "c"
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mId:J

    .line 224
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mAccountId:J

    .line 225
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mUsername:Ljava/lang/String;

    .line 226
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mNickname:Ljava/lang/String;

    .line 227
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mType:I

    .line 228
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mClientType:I

    .line 229
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mIsGroupChat:Z

    .line 230
    return-void

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/util/ChatList$Info;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mIsGroupChat:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/util/ChatList$Info;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/util/ChatList$Info;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/util/ChatList$Info;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/util/ChatList$Info;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/util/ChatList$Info;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mClientType:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/util/ChatList$Info;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/talk/util/ChatList$Info;->mType:I

    return v0
.end method


# virtual methods
.method getIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;
    .locals 5
    .parameter "cr"

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/talk/util/ChatList$Info;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    iget-object v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/google/android/talk/util/ChatList$Info;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 238
    iget-boolean v1, p0, Lcom/google/android/talk/util/ChatList$Info;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 239
    const-string v2, "groupChat"

    iget-boolean v1, p0, Lcom/google/android/talk/util/ChatList$Info;->mIsGroupChat:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    :cond_0
    return-object v0

    .line 239
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

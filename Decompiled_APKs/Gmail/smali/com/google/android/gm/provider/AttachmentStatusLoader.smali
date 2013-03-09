.class public Lcom/google/android/gm/provider/AttachmentStatusLoader;
.super Landroid/content/Loader;
.source "AttachmentStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/AttachmentStatusLoader$1;,
        Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;,
        Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;,
        Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;,
        Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAttachmentLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationId:J

.field private final mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

.field private final mDownloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/DownloadManager;)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationId"
    .parameter "downloadManager"

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p2, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAccount:Ljava/lang/String;

    .line 168
    iput-wide p3, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mConversationId:J

    .line 169
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;

    .line 172
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mConversationId:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->getAttachmentsForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "messages_messageId"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "messages_partId"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "downloadId"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "saveToSd"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string v5, "filename"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string v5, "status"

    aput-object v5, v3, v1

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    invoke-virtual {v1}, Landroid/content/Loader;->getId()I

    move-result v1

    new-instance v2, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;

    invoke-direct {v2, p0, v4}, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;-><init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Lcom/google/android/gm/provider/AttachmentStatusLoader$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 181
    new-instance v0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    invoke-direct {v0, p0, p1, p5}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;-><init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Landroid/content/Context;Landroid/app/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    invoke-virtual {v1}, Landroid/content/Loader;->getId()I

    move-result v1

    new-instance v2, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;

    invoke-direct {v2, p0, v4}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;-><init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Lcom/google/android/gm/provider/AttachmentStatusLoader$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 183
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/provider/AttachmentStatusLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/AttachmentStatusLoader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mConversationId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    return-object v0
.end method


# virtual methods
.method protected onReset()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 199
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->reset()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;

    .line 201
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 188
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachmentLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 193
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->stopLoading()V

    .line 194
    return-void
.end method

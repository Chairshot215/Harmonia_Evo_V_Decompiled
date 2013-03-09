.class Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuItemInfo"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field b_lastestVvm:Z

.field date:J

.field htcthreadId:J

.field is_private:J

.field latest_date:J

.field msgType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

.field threadId:J

.field threadtype:I

.field unreadCount:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1262
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    .line 1264
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    .line 1265
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    .line 1266
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 1267
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    .line 1268
    iput-wide v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    .line 1269
    iput-wide v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    .line 1270
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->is_private:J

    .line 1271
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    .line 1272
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->unreadCount:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1275
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    .line 1276
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    .line 1277
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    .line 1278
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 1279
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    .line 1280
    iput-wide v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    .line 1281
    iput-wide v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    .line 1282
    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->is_private:J

    .line 1283
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    .line 1284
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->unreadCount:I

    .line 1285
    return-void
.end method

.class public Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListHeaderViewCache"
.end annotation


# instance fields
.field public isQuerying:Z

.field public photoId:I

.field public subTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

.field public time:J

.field public title:Ljava/lang/String;

.field public valid:Z

.field public visible:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2617
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2614
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 2615
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 2618
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->reset()V

    .line 2619
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2621
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->visible:Z

    .line 2622
    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->title:Ljava/lang/String;

    .line 2623
    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->subTitle:Ljava/lang/String;

    .line 2624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->time:J

    .line 2625
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->photoId:I

    .line 2627
    return-void
.end method

.method public setCmasSubtitle(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 2630
    const/4 v0, 0x0

    .line 2631
    .local v0, resId:I
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v0

    .line 2632
    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->subTitle:Ljava/lang/String;

    .line 2633
    :cond_0
    return-void
.end method

.class public Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2874
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 2876
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 2879
    const/4 v0, 0x0

    return v0
.end method

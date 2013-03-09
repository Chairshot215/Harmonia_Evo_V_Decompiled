.class Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineInsertNewListAdapter;
.super Lcom/htc/widget/InsertNewListAdapter;
.source "BrowseOnlineDirectoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineInsertNewListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Lcom/htc/widget/InsertNewListAdapterInterface;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineInsertNewListAdapter;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    .line 147
    invoke-direct {p0, p2}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/android/htccontacts/link/DisplaySuggestListAdapter$1;
.super Ljava/lang/Object;
.source "DisplaySuggestListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 142
    .local v0, contactId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestListAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->onLinkButtonPressed(J)V

    .line 143
    return-void
.end method

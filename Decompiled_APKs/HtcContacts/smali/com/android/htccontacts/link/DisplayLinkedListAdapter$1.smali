.class Lcom/android/htccontacts/link/DisplayLinkedListAdapter$1;
.super Ljava/lang/Object;
.source "DisplayLinkedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;

    .line 134
    .local v0, c:Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-wide v2, v0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->Id:J

    long-to-int v2, v2

    iget v3, v0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->curPos:I

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->onLinkButtonPressed(II)V

    .line 135
    return-void
.end method

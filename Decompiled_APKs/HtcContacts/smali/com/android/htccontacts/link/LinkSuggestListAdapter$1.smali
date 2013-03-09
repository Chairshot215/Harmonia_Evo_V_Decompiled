.class Lcom/android/htccontacts/link/LinkSuggestListAdapter$1;
.super Ljava/lang/Object;
.source "LinkSuggestListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/LinkSuggestListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/LinkSuggestListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/LinkSuggestListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter$1;->this$0:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 152
    .local v0, rawcontactId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/htccontacts/link/LinkSuggestListAdapter$1;->this$0:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->access$000(Lcom/android/htccontacts/link/LinkSuggestListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->onSuggestButtonPressed(J)V

    .line 153
    return-void
.end method

.class Lcom/android/htccontacts/link/LinkContactListAdapter$1;
.super Ljava/lang/Object;
.source "LinkContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/LinkContactListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/LinkContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/LinkContactListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter$1;->this$0:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 140
    .local v0, contactId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/htccontacts/link/LinkContactListAdapter$1;->this$0:Lcom/android/htccontacts/link/LinkContactListAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/link/LinkContactListAdapter;->access$000(Lcom/android/htccontacts/link/LinkContactListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->onLinkButtonPressed(J)V

    .line 141
    return-void
.end method

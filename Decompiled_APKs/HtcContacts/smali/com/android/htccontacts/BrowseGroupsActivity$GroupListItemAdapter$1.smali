.class Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$1;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$1;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$1;->this$1:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->addGroup()V

    .line 1790
    return-void
.end method

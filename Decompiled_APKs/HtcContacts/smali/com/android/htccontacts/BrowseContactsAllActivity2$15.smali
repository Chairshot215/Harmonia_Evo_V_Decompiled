.class Lcom/android/htccontacts/BrowseContactsAllActivity2$15;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$DataBaseActionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 3964
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateViewComplete()V
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 3969
    return-void
.end method

.method public queryAllDataComplete()V
    .locals 2

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->ShowLoading:Z

    .line 3974
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->notifyDataSetChanged()V

    .line 3975
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$15;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDisplayExpandableListAdapter:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->queryGroupCountContact()V

    .line 3976
    return-void
.end method

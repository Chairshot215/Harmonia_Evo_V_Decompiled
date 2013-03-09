.class Lcom/android/htccontacts/BrowseGroupsActivity$2;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseGroupsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$2;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$2;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->addGroup()V

    .line 337
    return-void
.end method

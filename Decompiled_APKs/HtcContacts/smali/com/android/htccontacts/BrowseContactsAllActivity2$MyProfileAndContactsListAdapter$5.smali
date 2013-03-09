.class Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$5;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getSearchBarView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2229
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$5;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2232
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2234
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$5;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const v2, 0xf005

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2235
    return-void
.end method

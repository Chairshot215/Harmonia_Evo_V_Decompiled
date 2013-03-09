.class Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->notifyChanged(JLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

.field final synthetic val$nCount:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iput p2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;->val$nCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;->val$nCount:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setIndicatorCount(I)V

    .line 1665
    return-void
.end method

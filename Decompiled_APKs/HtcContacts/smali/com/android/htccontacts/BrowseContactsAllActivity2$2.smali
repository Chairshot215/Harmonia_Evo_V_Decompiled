.class Lcom/android/htccontacts/BrowseContactsAllActivity2$2;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->setTitleBar()V
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
    .line 352
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$2;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$2;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->doAddContact()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 356
    return-void
.end method

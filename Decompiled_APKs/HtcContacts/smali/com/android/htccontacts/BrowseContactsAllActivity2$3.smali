.class Lcom/android/htccontacts/BrowseContactsAllActivity2$3;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->setDropDownAction(Lcom/htc/widget/HeaderBarDropDown;)V
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
    .line 363
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->onShow()V

    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$3;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 369
    :cond_0
    return-void
.end method
